Use Exercici 6;
select passatger.DNI, passatgerNOM, passatger.Cognoms, vol.NomVol, Vol.Origen, Vol.Desti, Reserva.Import
from Passatger, Vol, Reserva
where Passatger.id=Reserva.Passsatger_id and Vol.id=Reserva.Vol_id;