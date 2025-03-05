#explain
/*select v.Username, count(distinct v1.Titolo_serie) as 'Num serie viste'
from visualizzare v,video v1, serie s
where v.Cod_video=v1.Cod_video and v1.Titolo_serie =s.Titolo_serie
group by v.Username
having count(distinct v1.Titolo_serie)>=all(select count(distinct s.Titolo_serie) from visualizzare v,video v1, serie s where v.Cod_video=v1.Cod_video and v1.Titolo_serie =s.Titolo_serie)*/