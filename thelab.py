from flask import Flask, render_template,url_for,request,redirect,flash
from flask_mysqldb import MySQL
from werkzeug.security import generate_password_hash
from datetime import datetime

thelabApp = Flask(__name__)

@thelabApp.route('/')
def home():
    return render_template('home.html') 

@thelabApp.route('/signin')
def signin():
    return render_template('signin.html')    

@thelabApp.route('/signup',mothods=['POST','GET'])
def signup():
    if request.method == 'POST':
        nombre =    request.form['nombre']
        correo =    request.form['correo']
        clave =    request.form['clave']
        claveCifrada = generate_password_hash(clave)
        telefono =    request.form['telefono']
        fechareg = datetime.now()
        

    return render_template('signup.html')    


if  __name__ =='__main__':
    thelabApp.run(port=3300,debug=True) 