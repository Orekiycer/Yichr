import os

from flask import Flask
from APP.setting import CONFIG
from APP.views import register_blueprint
from APP.ext import init_third

def create_app():
    base_config = CONFIG.get("default")

    app = Flask(__name__,
                template_folder=os.path.join(base_config.BASE_DIR,'templates'),
                static_folder=os.path.join(base_config.BASE_DIR,'static')
                )

    # 加载应用配置
    app.config.from_object(CONFIG.get('develop'))

    # 注册蓝图
    register_blueprint(app)

    # 初始化第三方应用
    init_third(app)

    return app