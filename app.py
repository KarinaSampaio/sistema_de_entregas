from flask import Flask, request, render_template, redirect, url_for, jsonify
import mysql.connector

app = Flask(__name__)

def get_db_connection():
    return mysql.connector.connect(
        host='127.0.0.1',
        user='root',
        password='Somos@2021',
        database='sistema_entregas'
    )

@app.route('/locais', methods=['GET'])
def listar_locais():
    conn = get_db_connection()
    cursor = conn.cursor(dictionary=True)
    cursor.execute("SELECT nome, endereco FROM locais")
    locais = cursor.fetchall()
    cursor.close()
    conn.close()
    return render_template('listar_locais.html', locais=locais)

@app.route('/adicionar_local', methods=['GET', 'POST'])
def adicionar_local():
    if request.method == 'POST':
        nome = request.form.get('nome')
        endereco = request.form.get('endereco')
        if nome and endereco:
            conn = get_db_connection()
            cursor = conn.cursor()
            cursor.execute("INSERT INTO locais (nome, endereco) VALUES (%s, %s)", (nome, endereco))
            conn.commit()
            cursor.close()
            conn.close()
            return redirect(url_for('listar_locais'))
        else:
            return "Nome e endereço são obrigatórios!", 400
    return render_template('adicionar_local.html')

if __name__ == '__main__':
    app.run(debug=True)
