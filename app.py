from flask import Flask, jsonify

app = Flask(__name__)

@app.route('/')
def main():
    return jsonify({
        'ok': True,
        'message': 'It works!'
    })

if __name__ == '__main__':
    app.run()