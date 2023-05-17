from flask import Flask, render_template, request, redirect, session, url_for
from flask_sqlalchemy import SQLAlchemy
import urllib.parse
from PIL import Image
import io, base64, os

app = Flask(__name__, template_folder='templates')
app.secret_key = 'secretkey'

# Define the User model for SQLAlchemy
password = "Provip123@"
password_encoded = urllib.parse.quote_plus(password)
app.config['SQLALCHEMY_DATABASE_URI'] = f'mysql+pymysql://root:{password_encoded}@localhost/dhonhanoi?charset=utf8'
app.config['SQLALCHEMY_TRACK_MODIFICATIONS'] = True
app.config['SECRET_KEY'] = 'secret_key'
db = SQLAlchemy(app)

class Users(db.Model):
    __tablename__ = 'Users'
    id = db.Column(db.Integer, primary_key=True)
    name = db.Column(db.String(20), unique=True, nullable=False)
    email = db.Column(db.String(50), unique=True, nullable=False)
    password = db.Column(db.String(60), nullable=False)

# Define the TruongDH model for SQLAlchemy
class TruongDH(db.Model): 
    __tablename__ = 'truongdh'
    tenTruong = db.Column(db.String(255), unique=True, nullable=False)
    maTruong = db.Column(db.String(255), unique=True, nullable=False, primary_key=True)
    linkaccess = db.Column(db.String(255))
    loaiTruong = db.Column(db.String(255))
    
@app.route('/')
def index():
    return render_template('login.html')

@app.route('/login', methods=['POST'])
def login():
    if request.method == 'POST':
        email = request.form['email']
        password = request.form['password']
        user = Users.query.filter_by(email=email, password=password).first()
        if user:
            DH = TruongDH.query.all()
            DH = [{'tenTruong': dh.tenTruong, 'maTruong': dh.maTruong, 'linkaccess': dh.linkaccess} for dh in DH]
            session['DH'] = DH  # Lưu session của các trường ĐH cho user
            session['user'] = user.id
            return redirect(url_for('home'))
        else:
            error = 'Invalid email or password'
            return render_template('login.html', error=error)
    else:
        return render_template('login.html')

@app.route('/register', methods=['POST'])
def register():
    name = request.form['name']
    email = request.form['email']
    password = request.form['password']

    # Insert new user into MySQL
    new_user = Users(name=name, email=email, password=password)
    db.session.add(new_user)
    db.session.commit()

    return redirect('/')

@app.route('/team', methods = ['GET','POST'])
def team():
    if request.method == 'POST':
        return redirect(url_for('home'))
    DH = TruongDH.query.all()
    DH = [{'tenTruong': dh.tenTruong, 'maTruong': dh.maTruong, 'linkaccess': dh.linkaccess} for dh in DH]
    session['DH'] = DH

    return render_template('team.html', DH=DH)
@app.route('/home')
def home():
    if 'user' not in session:
        return redirect(url_for('index'))

    DH = session.get('DH')
    return render_template('home.html', DH=DH)

@app.route('/image', methods=['GET', 'POST'])
def image():
    if request.method == 'POST':
        return redirect(url_for('home'))

    image_files = os.listdir('static/img/pics')
    images = [file for file in image_files if file.endswith(('.png', '.jpg', '.jpeg'))]

    DH = TruongDH.query.all()
    DH = [{'tenTruong': dh.tenTruong, 'maTruong': dh.maTruong, 'linkaccess': dh.linkaccess} for dh in DH]
    session['DH'] = DH
    return render_template('image.html', DH=DH, images=images)


@app.route('/logout')
def logout():
    session.pop('user', None)
    session.pop('DH', None)  # Xóa session của các trường ĐH khi logout
    return redirect(url_for('index'))

@app.route('/search', methods=['POST'])
def search():
    search_term = request.form['search_term']
    DH = TruongDH.query.filter(TruongDH.tenTruong.like('%'+search_term+'%')).all()
    DH = [{'tenTruong': dh.tenTruong, 'maTruong': dh.maTruong, 'linkaccess': dh.linkaccess} for dh in DH]
    session['DH'] = DH
    return redirect(url_for('home'))

@app.route('/filter', methods=['POST'])
def filter():
    loaiTruong = request.form['loaiTruong']
    DH = TruongDH.query.filter_by(loaiTruong=loaiTruong).all()
    DH = [{'tenTruong': dh.tenTruong, 'maTruong': dh.maTruong, 'linkaccess': dh.linkaccess} for dh in DH]
    session['DH'] = DH
    return redirect(url_for('home'))

if __name__ == '__main__':
    app.run(debug=True)
