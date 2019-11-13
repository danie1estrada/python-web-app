from flask import Flask, jsonify
from pywsip import Prolog

app = Flask(__name__)
prolog = Prolog()

@app.route('/')
def main():
    p.consult('knowledge_base.pl')
    resp = { 'stops': [] }
    for i in p.query('route(\'A-71\', X)'):
        resp['stops'].append(i['X'])

    return jsonify(resp)

if __name__ == '__main__':
    app.run()