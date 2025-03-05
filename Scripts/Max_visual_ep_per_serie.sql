select s.Titolo_serie, v.Titolo, count(*) as 'Num Visual'
from serie s, video v, visualizzare vis
where s.Titolo_serie=v.Titolo_serie and v.Cod_video=vis.Cod_video
group by s.Titolo_serie, v.Titolo
having count(*)>=all(select count(*)
					 from video v2, visualizzare vis2
					 where s.Titolo_serie=v2.Titolo_serie and v2.Cod_video=vis2.Cod_video
					 group by vis2.Cod_video)