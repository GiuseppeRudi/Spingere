select u.Username#, count(distinct v.Cod_video) as 'Film Horror visti'
from utente u ,visualizzare v, categoria c
where c.ID_genere=4 and u.Username=v.Username and v.Cod_video=c.Cod_video
group by v.Username
having count(distinct v.Cod_video)=(select count(*) from categoria c2 where c2.ID_genere=4)