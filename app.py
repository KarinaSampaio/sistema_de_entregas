from flask import Flask, request, jsonify
import mysql.connector
from mysql.connector import Error

app = Flask(__name__)

def get_db_connection():
    try:
        conn = mysql.connector.connect(
            host='localhost',
            database='sistema_entregas',
            user='root',
            password='Somos@2021'
        )
        if conn.is_connected():
            return conn
    except Error as e:
        print(e)

@app.route('/usuarios', methods=['GET'])
def listar_usuarios():
    conn = get_db_connection()
    cursor = conn.cursor(dictionary=True)
    cursor.execute("SELECT * FROM usuarios")
    usuarios = cursor.fetchall()
    cursor.close()
    conn.close()
    return jsonify(usuarios)

@app.route('/usuario', methods=['POST'])
def adicionar_usuario():
    data = request.get_json()
    nome = data['nome']
    email = data['email']
    senha = data['senha']
    conn = get_db_connection()
    cursor = conn.cursor()
    try:
        cursor.execute("INSERT INTO usuarios (nome, email, senha) VALUES (%s, %s, %s)", (nome, email, senha))
        conn.commit()
        response = {'status': 'Usuário adicionado com sucesso!'}
        return jsonify(response), 201
    except mysql.connector.Error as error:
        return jsonify({'status': 'Erro ao adicionar usuário', 'mensagem': str(error)}), 500
    finally:
        cursor.close()
        conn.close()

if __name__ == '__main__':
    app.run(debug=True)
