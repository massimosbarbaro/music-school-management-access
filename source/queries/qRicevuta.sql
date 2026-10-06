SELECT Causale.Causale, Ricevuta.Data, Ricevuta.Pagato, Go.Cognome, Go.Nome, Ricevuta.IdR, Ricevuta.IdP, Ricevuta.IdC, Ricevuta.IdRg
FROM (Causale INNER JOIN Ricevuta ON Causale.IdC = Ricevuta.IdC) INNER JOIN [Go] ON Ricevuta.IdP = Go.IdP
GROUP BY Causale.Causale, Ricevuta.Data, Ricevuta.Pagato, Go.Cognome, Go.Nome, Ricevuta.IdR, Ricevuta.IdP, Ricevuta.IdC, Ricevuta.IdRg;
