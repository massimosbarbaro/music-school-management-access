SELECT Go.Cognome, Ricevuta.IdR, RicGenerale.IdRg
FROM (Ricevuta RIGHT JOIN RicGenerale ON Ricevuta.IdRg = RicGenerale.IdRg) LEFT JOIN [Go] ON Ricevuta.IdP = Go.IdP
ORDER BY RicGenerale.IdRg;
