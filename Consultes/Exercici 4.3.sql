use `Exercici 4`;
select distinct *
from Clients, Polissa, TipusPolissa, Vendedors
where Clients_id=Polissa.Vendedors_id and Vendedors_id and Vendedors_id=Polissa.Vendedors_id and TipusPolissa_id=Polissa.TipusPolissa_id;