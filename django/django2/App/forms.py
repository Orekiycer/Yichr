from django import forms
from django.core.exceptions import ValidationError

from App.models import User


class RegisterForm(forms.Form):
    username = forms.CharField(required=True, error_messages={
        'required': '用户名必须输入',
    })
    password = forms.CharField(required=True, error_messages={
        'required': '密码必须输入',
    })
    confirm = forms.CharField(required=True, error_messages={
        'required': '密码必须输入',
    })

    def clean(self):
        username = self.cleaned_data.get('username', '')
        password = self.cleaned_data.get('password', None)
        confirm = self.cleaned_data.get('confirm', '')
        user = User.objects.get(username=username)

        if user.password == password:
            print(password, confirm)
            raise ValidationError({'password': "和原密码一样"})

        if password != confirm:
            raise ValidationError({'confirm': "两次密码输入不一致"})
        # user = User.objects.all().values_list('username')
        # for _ in user:
        #     cn = 1
        #     if username == _[0]:
        #
        #         cn = 0
        # while cn == 0:
        #     print(1)
        return self.cleaned_data
        # raise ValidationError({'username': "无此用户"})
    # def clean_username(self):
    #     username = self.cleaned_data.get('username')
    #
    #     for _ in user:
    #         print(1)
    #         print(_[0])
    #         cn = 1
    #         if username == _[0]:
    #             print(_[0])
    #             cn =0
    #
    #         while cn== 0:
    #             return self.cleaned_data0
    #     raise ValidationError("无此用户")
