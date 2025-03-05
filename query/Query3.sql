select Nome,count(*) as 'Numero video'
from video v,categoria c,genere g
where v.Cod_video =c.Cod_video and c.ID_genere =g.ID_genere
group by g.Nome