% Facts
% Routes: route, 
route('A-71', 'valle dorado').
route('A-71', 'estacion delta').
route('A-35', 'valle dorado').
route('A-35', 'estacion delta').

route('A-10','deportiva').
route('A-10','tec leon').

route('R-16','atlantis').
route('R-16','centro').
route('R-16','ciudad gotica').

route('A-98','deportiva').
route('A-98','imss').

route('A-48','tec leon').

route('A-84','tec leon').

route('X-58','estacion delta').
route('X-58','plaza mandarinas').
route('X-58','plaza mayor').

/*route('','').*/

schedule('R-16', 'tec leon', '14:15').
schedule('R-16', 'tec leon', '10:00').
schedule('R-16', 'tec leon', '12:20').
schedule('R-16', 'tec leon', '09:30').
schedule('R-16', 'tec leon', '16:05').
schedule('R-16', 'centro', '15:15').
schedule('R-16', 'centro', '11:00').
schedule('R-16', 'centro', '13:20').
schedule('R-16', 'centro', '10:30').
schedule('R-16', 'centro', '17:05').
schedule('R-16', 'ciudad gotica', '08:00').
schedule('R-16', 'ciudad gotica', '11:00').
schedule('R-16', 'ciudad gotica', '14:00').
schedule('R-16', 'ciudad gotica', '17:00').
schedule('R-16', 'ciudad gotica', '20:00').

schedule('A-10', 'tec leon', '14:15').
schedule('A-10', 'tec leon', '10:00').
schedule('A-10', 'tec leon', '12:20').
schedule('A-10', 'tec leon', '09:30').
schedule('A-10', 'tec leon', '16:05').
schedule('A-10', 'deportiva', '15:15').
schedule('A-10', 'deportiva', '11:00').
schedule('A-10', 'deportiva', '13:20').
schedule('A-10', 'deportiva', '10:30').
schedule('A-10', 'deportiva', '17:05').

schedule('X-58','estacion delta','06:00').
schedule('X-58','estacion delta','09:00').
schedule('X-58','estacion delta','12:00').
schedule('X-58','estacion delta','15:00').
schedule('X-58','estacion delta','18:00').
schedule('X-58','plaza mandarinas','07:00').
schedule('X-58','plaza mandarinas','10:00').
schedule('X-58','plaza mandarinas','14:00').
schedule('X-58','plaza mandarinas','16:00').
schedule('X-58','plaza mandarinas','19:00').
schedule('X-58','plaza mayor','08:00').
schedule('X-58','plaza mayor','11:00').
schedule('X-58','plaza mayor','15:00').
schedule('X-58','plaza mayor','17:00').
schedule('X-58','plaza mayor','20:00').

/*======================{REGLAS}======================*/
from_to(Or, De, X) :- route(X, Or) , route(X, De).

% directions(Origin, Desntination, Route):- route(Route, Origin), route(Route, Destination).