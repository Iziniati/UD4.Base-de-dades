use `Exercici 7`;
select Tiquets.NumFactura, Tiquets.Data, Tiquets.Hora, Empleats.Nom, Empleats.Cognoms, Tiquets.Total
from Tiquets, Empleats, LineasDeTiquet, LListaProductes
where LListaProductes.id=LineasDeTiquet.LListaProductes_id and Tiquets.id=LineasDeTiquet.Tiquets_id and Empleats.id=Tiquets.Empleats_id;¡ and Empleats.Nom like "%Izan"