use `Exercici 6`;
select distinct count(*) as "Numero de vols reservats" 
from Vols, Reserva
where Vols.id=Reserva.Vols_id