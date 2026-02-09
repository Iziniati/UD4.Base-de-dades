use `Exercici 4`;
select count(*) as "Numero de Polisses"
from Clients, Polissa
where Clients.id=Polissa.clients_id and Clients.Nom like "%Alicia";