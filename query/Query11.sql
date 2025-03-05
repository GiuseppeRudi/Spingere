select u.Username
from utente u, pagamento p 
where u.Username=p.Username
group by u.Username
having count(*)=1