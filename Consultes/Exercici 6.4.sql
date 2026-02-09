use `Exercici 6`;
select Avio.Model, Avio.Identificador, Avio.Capacitat, Vols.Origen, Vols.Desti, Vols.DataSortida, Vols.DataArrivada
from Avio, Vols
where Avio.id=Vols.Avio_id and Avio.Identificador like "%1";