select Nome, Cognome
from utente u
where not exists(select Username from visualizzare v where u.Username=v.Username)