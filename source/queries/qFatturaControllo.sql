SELECT Ricevuta.IdRg
FROM ((Ricevuta INNER JOIN RicGenerale ON Ricevuta.IdRg = RicGenerale.IdRg) INNER JOIN [Go] ON Ricevuta.IdP = Go.IdP) INNER JOIN Causale ON Ricevuta.IdC = Causale.IdC
GROUP BY Ricevuta.IdRg
ORDER BY Ricevuta.IdRg;
