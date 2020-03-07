
from flask_script import Manager
from APP import create_app

from APP.ext import db
from flask_migrate import Migrate, MigrateCommand
app = create_app()
manager = Manager(app)

migrate = Migrate(db=db, app=app)
manager.add_command('db', MigrateCommand)


if __name__ == '__main__':
    manager.run()
