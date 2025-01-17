from flask import Flask, request, jsonify
from pyswip import Prolog

app = Flask(__name__)

@app.route('/consult/routes')
def get_routes():
    p = Prolog()
    p.consult('knowledge_base.pl')
    routes = []

    for solution in p.query("route(Route, _)"):
        routes.append(solution['Route'])

    resp = {}
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
        response['stops'].append(solution['X'].title())

    return jsonify(response)

@app.route('/consult/directions')
def get_directions():
    p = Prolog()
    p.consult('knowledge_base.pl')
    origin = request.args.get('origin').lower()
    destination = request.args.get('destination').lower()
    
    print('here', origin, destination)
    response = {
        'availableRoutes': []
    }

    # { route: '', next}
    for solution in p.query(f"from_to('{origin}', '{destination}', Route)"):
        response['availableRoutes'].append(solution['Route'].title())

    # for solution in p.query(f"schedule('{origin}', '', S)"):
    #     pass
        
    return jsonify(response)

@app.route('/consult/schedules')
def get_schedules():
    p = Prolog()
    p.consult('knowledge_base.pl')
    route = request.args.get('route')
    return ""

if __name__ == '__main__':
    app.run()