select s.Username, vid.Titolo as 'Ultimo contenuto scaricato', s.`Data`
from scaricare s , video vid
where (s.`Data`>=all(select s2.`Data` from scaricare s2  where s.Username=s2.Username) and s.Cod_video =vid.Cod_video)
group by s.Username