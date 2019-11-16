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

@app.route('/consult/routes/<route>')
def get_routes_info(route):
    # route = request.args.get('route')
    resp = {
        'ruta': route,
        'paradas': []
    }

    for paradero in get_query_results('route({route}, X)'):
        resp['paradas'].append(paradero)

    return jsonify(resp)

def get_query_results(query):
    p = Prolog()
    p.consult('knowledge_base.pl')
    return p.query(query)

if __name__ == '__main__':
    app.run()