select v.Titolo, count(*) as Num_visual
from video v, visualizzare v2
where v.Cod_video=v2.Cod_video
group by v.Cod_video
having count(*)>((select count(*) from visualizzare)/(select count(distinct Cod_video) from visualizzare))