from flask import Flask, render_template, request, redirect, session, url_for
from flask_sqlalchemy import SQLAlchemy
from sqlalchemy import Text
import urllib.parse

app = Flask(__name__)

password = "Provip123@"
password_encoded = urllib.parse.quote_plus(password)
app.config['SQLALCHEMY_DATABASE_URI'] = f'mysql+pymysql://root:{password_encoded}@localhost/dhonhanoi?charset=utf8'
app.config['SQLALCHEMY_TRACK_MODIFICATIONS'] = True
app.config['SECRET_KEY'] = 'secret_key'

mydb = SQLAlchemy(app)

class TruongDH(mydb.Model) : 
    __tablename__ = 'truongdh'
    tenTruong = mydb.Column(mydb.String(255), unique=True, nullable=False)
    maTruong = mydb.Column(mydb.String(255), unique=True, nullable=False, primary_key=True)
    linkaccess = mydb.Column(mydb.String(255), unique=True)


@app.route('/')
def home():
    
    DH = TruongDH.query.all()
    return render_template('home.html',DH = DH)

@app.route('/chat',methods = ['GET','POST'])
def chat():
    if request.method == 'POST' :
        return redirect(url_for('chat'))
    return render_template('chat.html')
    
if __name__ == '__main__':
    app.run(debug=True)