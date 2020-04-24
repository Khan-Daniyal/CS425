#This is used to run database migrations and upgrades using flask_script and flask_migrate modules.

from flask_script import Manager
from flask_migrate import Migrate, MigrateCommand
from app import app, db


manager = Manager(app)
migrate = Migrate(app, db)

manager.add_command('db', MigrateCommand)

if __name__ == '__main__':
    manager.run()