SELECT Go.IdP, Go.Cognome, Go.Nome, Ricevuta.IdC
FROM [Go] LEFT JOIN Ricevuta ON Go.IdP = Ricevuta.IdP
GROUP BY Go.IdP, Go.Cognome, Go.Nome, Ricevuta.IdC
HAVING (((Ricevuta.IdC)=121))
ORDER BY Go.Cognome, Go.Nome;
