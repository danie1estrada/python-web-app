from flask import Flask, request, jsonify
from pyswip import Prolog

app = Flask(__name__)

@app.route('/')
def main():
    p = Prolog()
    p.consult('knowledge_base.pl')
    resp = { 'stops': [] }
    for i in p.query("route('A-71', X)"):
        resp['stops'].append(i['X'])

    return jsonify(resp)

@app.route('/consult/routes')
def get_routes_info():
    p = Prolog()
    p.consult('knowledge_base.pl')
    route = request.args.get('route')
    resp = {
        'ruta': route,
        'paradas': []
    }

    for paradero in p.query(f"route('{route}', X)"):
        resp['paradas'].append(paradero['X'])

    return jsonify(resp)

if __name__ == '__main__':
    app.run()