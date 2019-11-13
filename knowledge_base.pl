% Facts
% Routes: route, 
route('A-71', 'Valle Dorado').
route('A-71', 'Estación Delta').
route('A-35', 'Valle Dorado').
route('A-35', 'Estación Delta').

from_to(Origin, Desntiny, Route):- route(Route, Origin), route(Route, Desntiny).