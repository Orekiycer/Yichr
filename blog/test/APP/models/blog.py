from datetime import datetime

from flask._compat import text_type
from flask_login import UserMixin


from APP.ext import db, login_M


class Category(db.Model):
    cid = db.Column(db.Integer, primary_key=True, autoincrement=True)
    name = db.Column(db.String(100), nullable=False, unique=True)
    num = db.Column(db.Integer, default=0)
    __tablename__ = "category"


class Article(db.Model):
    aid = db.Column(db.Integer, primary_key=True, autoincrement=True)
    title = db.Column(db.String(100), nullable=True)
    content = db.Column(db.String(10000))
    create_time = db.Column(db.DateTime, default=datetime.now)
    cid = db.Column(db.Integer, db.ForeignKey("category.cid", ondelete="CASCADE"))
    hits = db.Column(db.Integer, default=0)
    comments = db.Column(db.Integer, default=0)
    picture = db.Column(db.String(300))
    __tablename__ = 'article'


class User(db.Model,UserMixin):
    uid = db.Column(db.Integer, primary_key=True, autoincrement=True)
    username = db.Column(db.String(30), nullable=False, unique=True)
    password = db.Column(db.String(128), nullable=False)
    phone = db.Column(db.String(11))
    email = db.Column(db.String(200))
    portrait = db.Column(db.String(300))
    regtime = db.Column(db.DateTime)
    isforbid = db.Column(db.Boolean, default=False)
    img = db.Column(db.String(255))
    __tablename__ = 'user'
    __table_args__ = {'extend_existing': True}

    def get_id(self):
        try:
            return text_type(self.uid)
        except AttributeError:
            raise NotImplementedError('No `id` attribute - override `get_id`')


@login_M.user_loader
def get_user(uid):
    return User.query.get(uid)


class Mark(db.Model):
    mid = db.Column(db.Integer, primary_key=True, autoincrement=True)
    content = db.Column(db.String(1000))
    create_time = db.Column(db.DateTime)
    uid = db.Column(db.Integer, db.ForeignKey('user.uid'))
    aid = db.Column(db.Integer)

class Tag(db.Model):
    tid = db.Column(db.Integer, primary_key=True, autoincrement=True)
    name = db.Column(db.String(30), nullable=True)
    aid = db.Column(db.Integer, db.ForeignKey("article.aid"))
