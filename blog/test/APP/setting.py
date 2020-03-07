import os
from datetime import timedelta


class Config(object):
    # 项目根目录
    BASE_DIR = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))
    DEBUG = False
    TESTING = False
    SECRET_KEY = "123456"
    DATABASE_URI = 'sqlite:///:memory:'
    MAIL_SERVER = "smtp.126.com"
    MAIL_USERNAME = "landmark_csl@126.com"
    MAIL_PASSWORD = "land123"
    SQLALCHEMY_DATABASE_URI = 'mysql+pymysql://root:734680@127.0.0.1:3306/gyc'
    SQLALCHEMY_TRACK_MODIFICATIONS = False

    PERMANENT_SESSION_LIFETIME = timedelta(days=3)

    PERMANENT = True


class ProductionConfig(Config):
    SQLALCHEMY_DATABASE_URI = 'mysql+pymysql://root:734680@127.0.0.1:3306/gyc'
    SQLALCHEMY_TRACK_MODIFICATIONS = False


class DevelopmentConfig(Config):
    DEBUG = True
    SQLALCHEMY_DATABASE_URI = 'mysql+pymysql://root:734680@127.0.0.1:3306/gyc'
    SQLALCHEMY_TRACK_MODIFICATIONS = False


class TestingConfig(Config):
    TESTING = True


CONFIG = {
    'default': Config,
    'develop': DevelopmentConfig,
    'product': ProductionConfig,
    'testing': TestingConfig
}
