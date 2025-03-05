select nazionalita, count(*) as 'Num Utenti'
from utente u
group by Nazionalita 