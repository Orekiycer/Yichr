from flask._compat import text_type
from flask_login import UserMixin

from APP.ext import db, login_M

#
# # 自定义基类实现增加、删除、修改记录
# class BaseModel:
#     # 保存新增或修改的一条记录
#     def save(self):
#         try:
#             db.session.add(self)
#             db.session.commit()
#             return True
#         except Exception as e:
#             print(e)
#             db.session.rollback()
#             return False
#
#     @classmethod
#     def save_all(cls, *args):
#         try:
#             db.session.add_all(args)
#             db.session.commit()
#             return True
#         except Exception as e:
#             print(e)
#             db.session.rollback()
#             return False
#
#     # 删除记录
#     def delete(self):
#         try:
#             db.session.delete(self)
#             db.session.commit()
#             return True
#         except Exception as e:
#             print(e)
#             db.session.rollback()
#             return False


class User(db.Model, UserMixin):
    uid = db.Column(db.Integer, primary_key=True, autoincrement=True)
    username = db.Column(db.String(30), nullable=False)
    password = db.Column(db.String(128), nullable=False)
    sex = db.Column(db.Boolean, default=False, name='gender')
    # replies = db.relationship('Article', backref='user', lazy="dynamic")
    # detail = db.relationship("UserDetail", backref='user', lazy='dynamic', uselist=False)
    __tablename__ = 'User'
    __table_args__ = {'extend_existing': True}

    def get_id(self):
        try:
            return text_type(self.uid)
        except AttributeError:
            raise NotImplementedError('No `id` attribute - override `get_id`')


@login_M.user_loader
def get_user(uid):
    return User.query.get(uid)

#
# class UserDetail(db.Model, UserMixin):
#     UDid = db.Column(db.Integer, primary_key=True, autoincrement=True)
#     phone = db.Column(db.String(11))
#     email = db.Column(db.String(100))
#     uid = db.Column(db.Integer, db.ForeignKey('user.uid', ondelete='CASCADE'))
#     __tablename__ = 'Detail'
#
#
# class Article(db.Model, BaseModel, UserMixin):
#     rid = db.Column(db.Integer, primary_key=True)
#     title = db.Column(db.String(30))
#     content = db.Column(db.String(3000))
#     uid = db.Column(db.Integer, db.ForeignKey("user.uid", ondelete='CASCADE'), unique=True)
#     artime = db.Column(db.DateTime)
#     __tablename__ = 'Article'
#
#
# class Comment(db.Model, BaseModel, UserMixin):
#     cid = db.Column(db.Integer, primary_key=True)
#     comment = db.Column(db.String(3000))
#     cotime = db.Column(db.DateTime)
#     username = db.Column(db.String(20))
#     uid = db.Column(db.Integer)
#     __tablename__ = 'Comment'
