% Facts
% Routes: route, 
route('A-71', 'Valle Dorado').
route('A-71', 'Estacion Delta').
route('A-35', 'Valle Dorado').
route('A-35', 'Estacion Delta').

from_to(Origin, Desntiny, Route):- route(Route, Origin), route(Route, Desntiny).