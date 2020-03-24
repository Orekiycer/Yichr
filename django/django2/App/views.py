import datetime
import os

from django.contrib.messages.storage import session
from io import BytesIO
from django.core.paginator import Paginator
from django.http import HttpResponse
from django.shortcuts import render, redirect

# Create your views here.
from django.urls import reverse

from App.forms import RegisterForm
from App.models import *
from App.utils import FileUpload
from App.verifycode import vc
from django2 import settings


def check_login(func):
    def inner(*args, **kwargs):
        if args[0].session.get('username'):
            return func(*args, **kwargs)
        else:
            return redirect('/login/')
            # return reverse('App:login')
            # render(r, 'index.html', locals())

    return inner


# 索引
@check_login
def index(request):
    category = Category.objects.all()
    return render(request, 'index.html', locals())


# 首页
def index_a(request):
    username = request.session.get('username')
    return render(request, 'tupian_pc_jzg_ms1.html', locals())


# def ind(request):
#     return HttpResponse('DD')

def pub_header(request):
    username = request.session.get('username')
    return render(request, 'public_header.html', locals())


# 管理界面
@check_login
def wz_xw(request, cid=-1, page=1, did=0):
    categorys = Category.objects.all()
    if cid < 0:
        category = Category.objects.first()
        cid = category.cid

    search = request.GET.get('search')
    # 查找
    if search:
        art = Article.objects.filter(cid=cid, title__contains=search)
        paginator = Paginator(art, 5)
        pager = paginator.page(page)
        ca_at = len(list(art))
        return render(request, 'wenzhang_xinwen.html', locals())

    art = Article.objects.filter(cid=cid)
    if did < 1:
        paginator = Paginator(art, 5)
        pager = paginator.page(page)
        page_len = (len(pager.object_list))
        ca_at = len(list(art))
        atk = False
        return render(request, 'wenzhang_xinwen.html', locals())
    art = art.exclude(aid=did)
    art_c = Article.objects.filter(cid=cid, aid=did).first()
    paginator = Paginator(art, 4)
    pager = paginator.page(page)
    ca_at = len(list(art)) + 1
    # did = art_c.aid
    atk = True

    # art = Article.objects.filter(cid=cid)
    # paginator = Paginator(art, 5)
    # pager = paginator.page(page)
    # ca_at = len(list(art))
    # atk = False
    # if Article.objects.filter(cid=cid, aid=did):
    #     art = art.exclude(aid=did)
    #     art_c = Article.objects.filter(cid=cid, aid=did).first()
    #     print(art_c)
    #     paginator = Paginator(art, 4)
    #     pager = paginator.page(page)
    #     ca_at = len(list(art)) + 1
    #     # did = art_c.aid
    #     atk = True
    #     return render(request, 'wenzhang_xinwen.html', locals())
    return render(request, 'wenzhang_xinwen.html', locals())


def pub_left(request):
    return render(request, 'public_left.html', locals())


# 登录
def login(request):
    if request.method == 'POST':
        # code_d = False
        userinfo = request.POST.dict()
        userinfo.pop('csrfmiddlewaretoken')
        user = User.objects.filter(username=userinfo.get('username'), password=userinfo.get('password')).first()
        code = userinfo.get('code')
        if code == vc.code:
            if user:
                request.session['username'] = user.username
                print(request.session['username'])
                return redirect('/index/')

            else:
                code_d = True
        else:
            code_a = True

    return render(request, 'loginb.html', locals())


# 验证码
def verifycode(requset):
    result = vc.generate()
    # session['code'] = vc.code
    response = HttpResponse(result, content_type='image/jpeg')
    return response


# 退出
def logout(request):
    del request.session['username']
    return redirect('/')


# 发布
@check_login
def wz_fb(request):
    categorys = Category.objects.all()

    if request.method == 'POST':
        fbj = request.FILES.get('photo')
        title = request.POST.get('title')
        content = request.POST.get('content')
        cid = request.POST.get('cid')
        caid = Category.objects.get(cid=cid)
        num = caid.num
        creatart = Article()

        # 图片上传
        if fbj:
            path = settings.MDEIA_ROOT
            fp = FileUpload(fbj, is_randomname=True)
            da = fp.upload(path)
            if da:
                creatart.picture = '/static/upload/' + str(da)
        # 文章存储

        if title:
            creatart.title = title
            creatart.content = content
            creatart.cid = caid
            caid.num = num + 1
            creatart.create_time = datetime.datetime.now().strftime('%Y-%m-%d %H:%M:%S')

            # creatart.picture = '/static/upload/'+str(da)
            print(creatart.picture)
            creatart.save()
            caid.save()
        else:
            message = '必须写标题'
            return render(request, 'wenzhang_xinwen_fabu.html', locals())
    return render(request, 'wenzhang_xinwen_fabu.html', locals())


# 删除
@check_login
def wz_del(request, aid, cid=-1, page=1, did=0):
    arti = Article.objects.get(aid=aid)
    # if arti:
    #     arti.delete()

    art = Article.objects.filter(cid=cid)
    if did < 1:
        paginator = Paginator(art, 5)
        pager = paginator.page(page)
        page_len = (len(pager.object_list))
        if len(list(art)) > 1:
            if page_len == 1:
                page -= 1
                if arti:
                    arti.delete()
                    old_cid = Category.objects.get(cid=cid)
                    old_cid.num -= 1
                    old_cid.save()
                return redirect(reverse('App:wz_xw', kwargs={'cid': cid, 'page': page, 'did': did}))
        if arti:
            arti.delete()
            old_cid = Category.objects.get(cid=cid)
            old_cid.num -= 1
            old_cid.save()
        return redirect(reverse('App:wz_xw', kwargs={'cid': cid, 'page': page, 'did': did}))

    art = art.exclude(aid=did)
    if len(list(art)) > 1:
        paginator = Paginator(art, 4)
        pager = paginator.page(page)
        page_len = (len(pager.object_list))
        if page_len == 1:
            page -= 1
            if arti:
                arti.delete()
                old_cid = Category.objects.get(cid=cid)
                old_cid.num -= 1
                old_cid.save()
            return redirect(reverse('App:wz_xw', kwargs={'cid': cid, 'page': page, 'did': did}))
    if arti:
        arti.delete()
        old_cid = Category.objects.get(cid=cid)
        old_cid.num -= 1
        old_cid.save()
    return redirect(reverse('App:wz_xw', kwargs={'cid': cid, 'page': page, 'did': did}))


# 修改
@check_login
def ravise(request, aid, cid):
    categorys = Category.objects.all()
    art = Article.objects.get(aid=aid)
    if request.method == 'POST':
        fbj = request.FILES.get('photo')
        title = request.POST.get('title')
        content = request.POST.get('content')
        new_cid = request.POST.get('cid')
        caid = Category.objects.get(cid=new_cid)
        # num = caid.num
        old_cid = Category.objects.get(cid=cid)

        # 图片上传
        if fbj:
            path = settings.MDEIA_ROOT
            fp = FileUpload(fbj, is_randomname=True)
            da = fp.upload(path)
            if da:
                art.picture = '/static/upload/' + str(da)

        # 文章存储
        if title:
            art.title = title
            art.content = content
            art.cid = caid
            caid.num += 1
            old_cid.num -= 1
            print(old_cid.num)
            # 时间暂定
            # art.create_time = datetime.datetime.now().strftime('%Y-%m-%d %H:%M:%S')

            # creatart.picture = '/static/upload/'+str(da)

            art.save()
            caid.save()
            old_cid.save()
        else:
            message = '必须写标题'
            return render(request, 'wenzhang_xinwen_ravise.html', locals())
    return render(request, 'wenzhang_xinwen_ravise.html', locals())


# 图片
@check_login
def pictrue(request, page=1):
    art = Article.objects.all()
    paginator = Paginator(art, 4)
    pager = paginator.page(page)
    return render(request, 'tupian_pc_index.html', locals())


# 咨询
@check_login
def zx(request):
    return render(request, 'zixun_dtl.html')


# 总览
@check_login
def xw_all(request, page=1):
    search = request.GET.get('search')
    # 查找
    if search:
        art = Article.objects.filter(title__contains=search)
        paginator = Paginator(art, 10)
        pager = paginator.page(page)
        ca_at = len(list(art))
        return render(request, 'super_cg.html', locals())

    art = Article.objects.all()

    paginator = Paginator(art, 10)
    pager = paginator.page(page)
    # page_len = (len(pager.object_list))
    ca_at = len(list(art))
    atk = False
    return render(request, 'super_cg.html', locals())


# 标签管理
@check_login
def tag(request, page=1):
    search = request.GET.get('search')
    # 查找
    if search:
        art = Category.objects.filter(title__contains=search)
        paginator = Paginator(art, 5)
        pager = paginator.page(page)
        ca_at = len(list(art))
        return render(request, 'super_cg.html', locals())
    tag = Category.objects.all()
    paginator = Paginator(tag, 5)
    pager = paginator.page(page)
    ca_at = len(list(tag))
    if request.method == 'POST':
        name = request.POST.get('createname')
        cate = Category()
        category = Category.objects.all().values('name')
        try:
            if name:
                cate.name = name
                cate.save()
                print(1)
            return redirect(reverse('App:tag', kwargs={'page': page}))
        except Exception as  a:
            flash = '必须输入且不能重名'
            print(2)
            return render(request, 'super_label.html', locals())
    return render(request, 'super_label.html', locals())


# 标签创建和修改
# def tag_creat(request, page=1):
#     if request.method == 'POST':
#         name = request.POST.get('createname')
#         cate = Category()
#         category = Category.objects.all().values('name')
#         try:
#             if name:
#                 cate.name = name
#                 cate.save()
#         except Exception as  a:
#             flash = '必须输入且不能重名'
#             page = page
#             return render(request, 'super_label.html', locals())
#             # return redirect(reverse('App:tag', kwargs={'page': page}),locals())
#     return redirect(reverse('App:tag', kwargs={'page': page}))


# def tag_change(request,page=1):
#     if request.method == 'POST':
#         name = request.POST.get('createname')
#         cate = Category()
#         if name:
#             cate.name = name
#             cate.save()
#     return redirect(reverse('App:tag', kwargs={'page': page}))
# 标签删除
@check_login
def tag_del(request, cid, page=1):
    catei = Category.objects.get(cid=cid)
    cate = Category.objects.exclude(cid=cid)
    paginator = Paginator(cate, 5)
    pager = paginator.page(page)
    page_len = (len(pager.object_list))
    if len(list(cate)) > 1:
        if page_len == 1:
            page -= 1
            if catei:
                catei.delete()

            return redirect(reverse('App:tag', kwargs={'page': page}))
    if catei:
        catei.delete()

    return redirect(reverse('App:tag', kwargs={'page': page}))


# 修改密码
def chp(request):
    if request.method == 'POST':
        form = RegisterForm(request.POST)
        try:
            if form.is_valid():
                # data = form.cleaned_data
                username = form.changed_data.get('username')
                user = User.objects.get(username=username)
                if user:
                    password = form.cleaned_data.get('password')
                    user.password = password
                    user.save()
            else:
                return render(request, 'change_psw.html', {'form': form})
        except:
            flash = '无此用户'
            return render(request, 'change_psw.html', locals())
            # return render(request, 'change_psw.html', {'form': form})

    return render(request, 'change_psw.html')
