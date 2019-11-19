from flask import Flask, request, jsonify
from pyswip import Prolog

app = Flask(__name__)

@app.route('/')
def get_routes():
    p = Prolog()
    p.consult('knowledge_base.pl')
    routes = []

    for solution in p.query("route('Route', _)"):
        routes.append(solution['Route'])

    resp['test'] = str(routes)
    resp['routes'] = list(set(routes))
    return jsonify(resp)

@app.route('/consult/route-info')
def get_routes_info():
    p = Prolog()
    p.consult('knowledge_base.pl')
    route = request.args.get('route')
    response = {
        'route': route,
        'stops': []
    }

    for solution in p.query(f"route('{route}', X)"):
        resp['stops'].append(solution['X'])

    return jsonify(response)

@app.route('/consult/directions')
def get_directions():
    p = Prolog()
    p.consult('knowledge_base.pl')
    origin = request.args.get('origin')
    destination = request.args.get('destination')
    response = {
        'availableRoutes': [

        ]
    }

    # { route: '', next}
    for solution in p.query(f"from_to('{origin}', '{destination}', Route)"):
        pass

    # for solution in p.query(f"schedule('{origin}', '', S)"):
    #     pass
        
    return jsonify(response)

@app.route('/consult/schedules')
def get_schedules():
    p = Prolog()
    p.consult('knowledge_base.pl')
    route = request.args.get('route')

if __name__ == '__main__':
    app.run()