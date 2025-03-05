select u.Username, vid.Titolo as 'Ultimo contenuto visto', v.`Data` as 'Data visione',vid2.Titolo as 'Ultimo contenuto scaricato', s.`Data` as 'Data download'
from utente u,visualizzare v,scaricare s, video vid, video vid2
where (v.`Data`>=all(select v2.`Data` from visualizzare v2 where u.Username=v2.Username) and s.`Data`>=all(select s2.`Data` from scaricare s2 where u.Username=s2.Username) and vid.Cod_video=v.Cod_video and vid2.Cod_video=s.Cod_video and u.Username=v.Username and u.Username=s.Username)
group by u.Username