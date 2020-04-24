#Author: Daniyal Khan
#This is the entry point of the application. This will define and run the application.

from models import db
from flask import Flask
from flask import render_template

app = Flask(__name__)

POSTGRES = {
	
	'user'	:	'postgres',
	'pw'	:	'password',
	'db'	:	'WebApp',
	'host'	:	'localhost',
	'port'	:	'5432'
}

DATABASE_URL='postgres://{postgres}:{password}@{localhost}:{5432}/{WebApp}'

#...app config...
app.config['DEBUG'] = True
app.config['SQLALCHEMY_DATABASE_URI'] = DATABASE_URL
db.init_app(app)


@app.route('/home')
def main():
	return 'Hello World!'

@app.route('/login')
def login():
    return render_template('login.html')


if __name__ == '__main__':
	app.run()

