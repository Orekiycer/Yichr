import re

from flask import session
from flask_wtf import FlaskForm
from wtforms import StringField, PasswordField
from wtforms.validators import DataRequired, EqualTo, Length, ValidationError

from APP.models.blog import User


def check_phone(form1, field):
    if not re.match(r'(13\d|14[5|7]|15\d|166|17[3|6|7]|18\d)\d{8}$', field.data):
        raise ValidationError("电话号码不符合规则")


class RegisterForm(FlaskForm):
    username = StringField("用户名", validators=[DataRequired("用户名必须输入")])
    password = PasswordField("密码", validators=[DataRequired("密码必须输入"), Length(min=3, max=12, message="密码长度必须在3-12位")])
    pwdagain = PasswordField("确认密码", validators=[EqualTo("password", message="两次密码不一致")])
    # email = EmailField("邮箱", validators=[Email("邮箱格式错误")])
    phonenum = StringField("电话", validators=[check_phone])
    phonecode = StringField()
    piccode = StringField()

    # 验证用户是否重名
    # 自定义的验证方法： validate_字段名
    def validate_username(self, field):
        # value是一个对象，获取用户输入的值应该是field.data
        # print(field.data)
        user = User.query.filter(User.username == field.data).first()
        if user:
            raise ValidationError("用户名重名")

        return field

    def validate_phonecode(self, field):

        if field.data != session.get("sms"):
            raise ValidationError("短信验证失败")

    def validate_piccode(self, field):
        if field.data != session.get('code'):
            raise ValidationError("验证码匹配失败")
