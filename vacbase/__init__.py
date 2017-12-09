from flask import Flask
from flask import render_template
from flask import request
import sqlite3
app = Flask(__name__)

conn = sqlite3.connect(":memory:")

sql = open("database.sql").read()

c = conn.cursor()

for stmt in sql.split(';'):
    print(stmt)
    c.execute(stmt)

conn.commit()

@app.route("/")
def hello():
    return render_template('index.html')

@app.route("/list", methods=['POST'])
def list():
    country = request.form['country']
    vax = [row for row in conn.cursor().execute('SELECT * FROM vax WHERE country = ?', (country,))]
    return render_template('country.html', country=country, vax=vax)
