import hashlib
from random import randint

from flask import Blueprint, render_template, request, redirect, session, make_response, jsonify, flash
from flask_login import login_user, logout_user, current_user
from sqlalchemy import or_

from APP.SMS import sms
from APP.models.blog import *
from APP.forms import RegisterForm
from APP.verifycode import vc

jk = Blueprint("jk", __name__)


@jk.route("/login/", methods=['GET', 'POST'])
def login():
    if request.method == 'POST':
        username = request.form.get('username')
        password = request.form.get("password")

        cdk = hashlib.sha1(password.encode('utf8')).hexdigest()
        user = User.query.filter(User.username == username, or_
        (User.password == password, User.password == cdk)).first()
        if user:
            login_user(user)
            return redirect('/')
        else:
            flash("用户密码错误")
    return render_template('login.htm')


#
# @jk.route("/reply/")
# @login_required
# def reply_artic_le():
#     return "回复"


@jk.route("/blog/", methods=['POST', 'GET'])
@jk.route("/blog/<int:cid>/", methods=['POST', 'GET'])
def blog(cid=-1):
    if current_user.is_authenticated:
        if request.method == 'POST':
            megs = request.form.get('meg')
            tag_f = Category.query.filter(Category.name == megs).first()
            if tag_f:
                cid = tag_f.cid
            else:
                flash('查询无')
        if cid < 0:
            i = Category.query.first()
            cid = i.cid

        art = db.session.query(Article, Category).filter(Article.cid == Category.cid, Category.cid == cid).all()
        art_num = len(art)

        cates = Category.query.all()
        cate_len = len(cates)

        ord_thcate = Article.query.order_by(-Article.create_time).all()[:3]
    else:
        return redirect('/login')
    return render_template('blog.html', **locals())


@jk.route("/", methods=['POST', 'GET'])
def index():
    if request.method == 'POST':
        megs = request.form.get('meg')
        tag_f = Category.query.filter(Category.name == megs).first()
        if tag_f:
            id = tag_f.cid
            return blog(id)
        else:
            flash('查询无')
    art = Article.query.all()
    use = User.query.all()
    ord_thcate = Article.query.order_by(-Article.create_time).all()[:3]
    return render_template('index.html', **locals())


# @jk.route("/sign/")
# def sign():
#     return render_template('sign.htm')


@jk.route("/sign/", methods=['GET', 'POST'])
def sign():
    form = RegisterForm()
    if request.method == 'POST':
        if form.validate_on_submit():
            username = form.username.data
            password = form.password.data
            user = User(username=username)
            user.password = hashlib.sha1(password.encode('utf8')).hexdigest()
            db.session.add(user)
            db.session.commit()
            return redirect('/')
    return render_template("sign.htm", **locals())


@jk.route("/verify/")
def verify_code():
    result = vc.generate()
    # 把验证码字符串保存到session
    session['code'] = vc.code
    # 创建响应对象
    response = make_response(result)
    response.headers["Content-Type"] = "image/png"
    return response


# 短信验证
@jk.route("/send/", methods=["GET", "POST"])
def send_sms():
    phone = request.values.get('phone')

    if phone:
        # 产生验证码
        num = randint(10000, 99999)
        # 添加到session
        session['sms'] = str(num)
        para = "{'number':'%d'}" % num
        res = sms.send(phone, para)
        return jsonify({'code': 1, 'msg': '发送成功'})
    return jsonify({"code": 0, 'msg': "电话号码不存在"})


@jk.route("/post/", methods=["GET", "POST"])
@jk.route('/post/<int:page>', methods=["GET", "POST"])
def post(page=1):
    if current_user.is_authenticated:
        if request.method == 'POST':
            megs = request.form.get('meg')
            print(megs)
            tag_f = Category.query.filter(Category.name == megs).first()
            print(tag_f)
            if tag_f:
                id = tag_f.cid
                return blog(id)
            else:
                flash('查询无')

        pagination = Article.query.paginate(page, 2)
        print(pagination)
        if pagination.pages <= 3:
            pagination.page_range = range(1, pagination.pages + 1)
        else:
            if page >= 2 and page + 2 <= pagination.pages:
                pagination.page_range = range(page - 1, page + 2)
            elif page >= 3 and page + 2 > pagination.pages:
                pagination.page_range = range(pagination.pages - 3, pagination.pages)
            else:
                pagination.page_range = range(1, 4)
        cates = Category.query.all()
        cate_len = len(cates)
        ord_thcate = Article.query.order_by(-Article.create_time).all()[:3]
    else:
        return redirect('/login')
    return render_template('post.html', **locals())


@jk.route('/logout/')
def logout():
    logout_user()
    return redirect('/')


@jk.route("/cont/", methods=["GET", "POST"])
@jk.route("/cont/<int:id>/", methods=["GET", "POST"])
def cont(id=-1):
    if current_user.is_authenticated:
        if request.method == 'POST':
            megs = request.form.get('meg')
            print(megs)
            tag_f = Category.query.filter(Category.name == megs).first()
            print(tag_f)
            if tag_f:
                id = tag_f.cid
                return blog(id)
            else:
                flash('查询无')

        if id < 0:
            i = Article.query.order_by(-Article.create_time).first()
            id = i.aid
            print(id)
        art_c = db.session.query(Article).filter(Article.aid == id).all()
        art_len = len(art_c)
        art = db.session.query(Article, Category).filter(Article.aid == id, Article.cid == Category.cid).all()
        cates = Category.query.all()
        cate_len = len(cates)
        ord_thcate = Article.query.order_by(-Article.create_time).all()[:3]
        if request.method == 'POST':
            comment = request.form.get('usercomment')
            mark = Mark(content=comment, aid=id)
            db.session.add(mark)
            db.session.commit()
            return render_template('cont.html', **locals())

    else:
        return redirect('/login')
    return render_template('cont.html', **locals())
