from flask import Flask

thelab = Flask(__name__)

@thelab.route('/')
def home():
    return 'hello wold' 

if __name__ =='__main__':
    thelab.run(port=3300,debug=True) 