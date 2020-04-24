#Author: Daniyal Khan
#This is the entry point of the application. This will define and run the application.

from models import db
from flask import Flask

app = Flask(__name__)

POSTGRES = {
	
	'user'	:	'postgres',
	'pw'	:	'password',
	'db'	:	'my_database',
	'host'	:	'localhost',
	'port'	:	'5432'
}

#...app config...
app.config['DEBUG'] = True
app.config['SQLALCHEMY_DATABASE_URI'] = 'postgresql://%(user)s:\%(pw)s@%(host)s:%(port)s/%(db)s' % POSTGRES
db.init_app(app)


@app.route('/')
def main():
	return 'Hello World!'


if __name__ = '__main__':
	app.run()

