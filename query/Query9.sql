select Titolo
from video v
where not exists(select Titolo_serie from serie s where s.Titolo_serie=v.Titolo_serie)