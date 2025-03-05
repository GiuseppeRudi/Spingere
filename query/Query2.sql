select Titolo,count(*) as 'Numero visualizzazioni'
from video vid, visualizzare vis
where vid.Cod_video=vis.Cod_video
group by Titolo
having count(*)>10