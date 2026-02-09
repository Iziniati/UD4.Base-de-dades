use `Exercici 4`;
select Polissa.Numero as "Numero De Polisses", TipusPolissa.Nom as "TipusPolissa", Clients.id as "DNI", Clients.Cognoms as "cognoms" 
from Polissa, TipusPolissa, Clients
where Clients_id=Polissa.Clients_id and TipusPolissa_id and TipusPolissa.Nom like "Aitor";