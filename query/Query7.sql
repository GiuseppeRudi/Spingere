select Nome,Cognome
from utente u 
where not exists(select Username from scaricare s where s.Username=u.Username)