select Nome,count(*) as 'Visual Squid Game'
from utente u ,visualizzare v ,serie s, video v2
where s.Titolo_serie="Squid Game" and u.Username=v.Username and v2.Cod_video =v.Cod_video and v2.Titolo_serie =s.Titolo_serie 
group by u.Username