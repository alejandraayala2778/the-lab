from flask import Flask, render_template,url_for,request,redirect,flash
from flask_mysqldb import MySQL
from config import config 
from werkzeug.security import generate_password_hash
from datetime import datetime

thelabApp = Flask(__name__)
db        = MySQL(thelabApp)

@thelabApp.route('/')
def home():
    return render_template('home.html') 

@thelabApp.route('/signin')
def signin():
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


if  __name__ =='__main__':
    thelabApp.config.from_object(config['development'])
    thelabApp.run(port=3300) 