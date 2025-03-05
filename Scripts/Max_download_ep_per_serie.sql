select s.Titolo_serie, v.Titolo, count(*) as 'Num Download'
from serie s, video v, scaricare sca
where s.Titolo_serie=v.Titolo_serie and v.Cod_video=sca.Cod_video
group by s.Titolo_serie, v.Titolo
having count(*)>=all(select count(*)
					 from video v2, scaricare sca2
					 where s.Titolo_serie=v2.Titolo_serie and v2.Cod_video=sca2.Cod_video
					 group by sca2.Cod_video)