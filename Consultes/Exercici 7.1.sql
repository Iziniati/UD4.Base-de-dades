use `Exercici 7`;
select LListaProductes.Descripcio, LListaProductes.PreuUnitari
from LListaProductes
where LListaProductes.CodiBarres like "%No" and LListaProductes.IVA like "2%";