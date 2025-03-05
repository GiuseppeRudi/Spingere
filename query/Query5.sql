select Nome, Cognome, count(*) as 'Num Download Anno Corrente'
from utente u ,scaricare s 
where Year(s.`Data`)=Year(current_date()) and u.Username=s.Username
group by u.Username