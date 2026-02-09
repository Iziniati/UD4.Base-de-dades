use `Exercici 5`;
select Cita.Dia, Cita.Hora, Client.Nom, Vehicle.Marca, TipusVehicle.Nom
from Client, Vehicle, TipusVehicle, Cita
where Cita.Vehicle_id=Vehicle.id and Client.id=Vehicle.Client_id and TipusVehicle.id=Vehicle.TipusVehicle_id and Cita.Dia > "1"