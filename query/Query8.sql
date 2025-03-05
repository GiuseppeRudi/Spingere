select Titolo
from video v
where not exists(select Cod_creat from autore a where a.Cod_creat=v.Cod_creat)