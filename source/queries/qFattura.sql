SELECT Ricevuta.IdRg, RicGenerale.Data, Go.Cognome, Go.Nome, Causale.Causale, Ricevuta.Dovuto, Ricevuta.Pagato, Ricevuta.Stampa, Ricevuta.Nota
FROM ((Ricevuta INNER JOIN RicGenerale ON Ricevuta.IdRg=RicGenerale.IdRg) INNER JOIN [Go] ON Ricevuta.IdP=Go.IdP) INNER JOIN Causale ON Ricevuta.IdC=Causale.IdC
ORDER BY Ricevuta.IdRg;
