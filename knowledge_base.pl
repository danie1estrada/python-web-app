% Facts
% Routes: route, 
route('A-71', 'Valle Dorado').
route('A-71', 'Estacion Delta').
route('A-35', 'Valle Dorado').
route('A-35', 'Estacion Delta').

route('A-10','deportiva').
route('A-10','tec leon').

route('R-16','atlantis').
route('R-16','centro').
route('R-16','ciudad gotica').

route('A-98','deportiva').
route('A-98','IMSS').

route('A-48','tec leon').

route('A-84','tec leon').

route('X-58','estacion delta').
route('X-58','plaza mandarinas').
route('X-58','plaza mayor').

/*route('','').*/

hora('R-16', 'tec leon', '14:15').
hora('R-16', 'tec leon', '10:00').
hora('R-16', 'tec leon', '12:20').
hora('R-16', 'tec leon', '09:30').
hora('R-16', 'tec leon', '16:05').
hora('R-16', 'centro', '15:15').
hora('R-16', 'centro', '11:00').
hora('R-16', 'centro', '13:20').
hora('R-16', 'centro', '10:30').
hora('R-16', 'centro', '17:05').
hora('R-16', 'ciudad gotica', '08:00').
hora('R-16', 'ciudad gotica', '11:00').
hora('R-16', 'ciudad gotica', '14:00').
hora('R-16', 'ciudad gotica', '17:00').
hora('R-16', 'ciudad gotica', '20:00').

hora('A-10', 'tec leon', '14:15').
hora('A-10', 'tec leon', '10:00').
hora('A-10', 'tec leon', '12:20').
hora('A-10', 'tec leon', '09:30').
hora('A-10', 'tec leon', '16:05').
hora('A-10', 'deportiva', '15:15').
hora('A-10', 'deportiva', '11:00').
hora('A-10', 'deportiva', '13:20').
hora('A-10', 'deportiva', '10:30').
hora('A-10', 'deportiva', '17:05').

hora('X-58','estacion delta','06:00').
hora('X-58','estacion delta','09:00').
hora('X-58','estacion delta','12:00').
hora('X-58','estacion delta','15:00').
hora('X-58','estacion delta','18:00').
hora('X-58','plaza mandarinas','07:00').
hora('X-58','plaza mandarinas','10:00').
hora('X-58','plaza mandarinas','14:00').
hora('X-58','plaza mandarinas','16:00').
hora('X-58','plaza mandarinas','19:00').
hora('X-58','plaza mayor','08:00').
hora('X-58','plaza mayor','11:00').
hora('X-58','plaza mayor','15:00').
hora('X-58','plaza mayor','17:00').
hora('X-58','plaza mayor','20:00').

/*======================{REGLAS}======================*/
from_to(Or, De, X) :- route(X, Or) , route(X, De).

% from_to(Origin, Desntiny, Route):- route(Route, Origin), route(Route, Desntiny).