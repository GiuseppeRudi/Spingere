select s.Titolo_serie, avg(Durata) as 'Durata media'
from serie s,video v
where v.Titolo_serie=s.Titolo_serie
group by s.Titolo_serie 