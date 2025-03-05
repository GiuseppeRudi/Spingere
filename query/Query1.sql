select Nome,Cognome
from utente u
where not exists (select Username from pagamento p where u.Username=p.Username);