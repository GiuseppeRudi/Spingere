select s.Username
from scaricare s,categoria c 
where s.Cod_video=c.Cod_video
group by s.Username
HAVING COUNT(DISTINCT c.ID_Genere) = (
    SELECT COUNT(*)
    FROM Genere
)