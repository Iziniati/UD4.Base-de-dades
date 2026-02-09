use `Exercici 7`;
select count(LineasDeTiquet.id) as "Numero Linies"
from LineasDeTiquet, Tiquets, Empleats
where Tiquets.id=LineasDeTiquet.Tiquets.id and Tiquets.Empleats_id=Empleats.id and Empleats.Nom like "%Izan"