use `Exercici 6`;
select Pasatgers.Nom, Pasatgers.Cognoms, Reserva.id, Reserva.Import
from Pasatgers, Reserva, Vols
where Pasatgers.id=Reserva.Pasatgers_id and Vols.id=Reserva.Vols_id and Vols.DataSortida like "1/1/26"