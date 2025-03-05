select Titolo
from video v
where v.Cod_creat=(select v2.Cod_creat from video v2 where v2.Cod_video=4)