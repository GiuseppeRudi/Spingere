select Nome,Cognome
from utente u
where not exists(select p.Username from pagamento p, visualizzare v where p.Username=u.Username and u.Username=v.Username)