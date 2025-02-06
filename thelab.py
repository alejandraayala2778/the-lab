from flask import Flask, render_template,url_for

thelabApp = Flask(__name__)

@thelabApp.route('/')
def home():
    return render_template('home.html') 

@thelabApp.route('/signin')
def signin():
    return render_template('signin.html')    

@thelabApp.route('/signup')
def signup():
    return render_template('signup.html')    


if  __name__ =='__main__':
    thelabApp.run(port=3300,debug=True) 