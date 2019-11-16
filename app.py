from flask import Flask, jsonify
from pyswip import Prolog

app = Flask(__name__)

@app.route('/')
def main():
    p = Prolog()
    p.consult('knowledge_base.pl')
    resp = { 'stops': [] }
    for i in p.query('route(\'A-71\', X)'):
        resp['stops'].append(i['X'])

    return jsonify(resp)

if __name__ == '__main__':
    app.run()