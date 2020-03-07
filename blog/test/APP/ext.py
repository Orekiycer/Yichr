from flask_login import LoginManager
from flask_sqlalchemy import SQLAlchemy
from flask_migrate import Migrate
from flask_mail import Mail
from flask_bootstrap import Bootstrap

db = SQLAlchemy()
migrate = Migrate(db=db)
mail = Mail()
bst = Bootstrap()

login_M = LoginManager()


# 初始化第三方库
def init_third(app):
    db.init_app(app=app)
    migrate.init_app(app)
    mail.init_app(app)
    bst.init_app(app)

    login_M.init_app(app)
    login_M.login_view = "/login/"
