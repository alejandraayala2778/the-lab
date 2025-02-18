from flask import Flask, render_template,url_for,request,redirect,flash
from flask_mysqldb import MySQL
from config import config 
from models.ModelUser import ModelUser
from models.entities.User import User 
from flask_login import LoginManager, login_user,logout_user,login_required
from werkzeug.security import generate_password_hash
from datetime import datetime

thelabApp = Flask(__name__)
db        = MySQL(thelabApp)
sessionManager = LoginManager(thelabApp)

@sessionManager.user_loader
def load_user(id):
    return ModelUser.get_by_id(db,id)

@thelabApp.route('/')
def home():
    return render_template('home.html') 

@thelabApp.route('/signin',methods=['POST','GET'])
def signin():
    if request.method == 'POST':
        usuario = User(0,None,request.form['correo'],request.form['clave'],None,None,None)
        usuarioAutenticado = ModelUser.signin(db,usuario)
        if usuarioAutenticado is not None:
            if usuarioAutenticado.clave:
                login_user(usuarioAutenticado)
                if usuarioAutenticado.perfil == 'A':
                    return render_template('admin.html')
                else:
                    return render_template('user.html')
            else:
                flash('clave incorrecta')
                return redirect(request.url)
        else:
            flash('usuario no existe')
            return redirect(request.url)
    else:
        return render_template('signin.html')    

@thelabApp.route('/signup',methods=['POST','GET'])
def signup():
    if request.method == 'POST':
        nombre =    request.form['nombre']
        correo =    request.form['correo']
        clave =    request.form['clave']
        claveCifrada = generate_password_hash(clave)
        telefono =    request.form['telefono']
        fechareg = datetime.now()
        regUsuario = db.connection.cursor()
        regUsuario.execute("INSERT INTO usuario (nombre,correo,clave,telefono,fechareg) VALUES (%s, %s, %s, %s, %s)",(nombre,correo,claveCifrada,telefono,fechareg))
        db.connection.commit()
        regUsuario.close()
        return redirect(url_for('home'))
    else:
        return render_template('signup.html')    
@thelabApp.route('/signout',methods=['POST','GET'])
def signout():
    logout_user()
    return redirect(url_for('home'))

@thelabApp.route('/sUsuario',methods=['POST','GET'])
def sUsuario():
    selUsuario = db.connection.cursor()
    selUsuario.execute("SELECT * FROM usuario")
    u = selUsuario.fetchall()

if  __name__ =='__main__':
    thelabApp.config.from_object(config['development'])
    thelabApp.run(port=3300)  