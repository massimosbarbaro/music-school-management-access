SELECT Causale.Causale, Ricevuta.Data, Ricevuta.Pagato, Ricevuta.Stampa, Ricevuta.Selezione, Go.Cognome, Go.Nome, RicGenerale.Data, Ricevuta.IdR, Ricevuta.IdRg, Ricevuta.IdP, Ricevuta.IdC, Causale.Ordina, Comuni.Comune, Go.Via, Go.[davcna koda]
FROM ((((Causale INNER JOIN Ricevuta ON Causale.IdC = Ricevuta.IdC) INNER JOIN [Go] ON Ricevuta.IdP = Go.IdP) LEFT JOIN LSP ON Go.IdP = LSP.IdP) INNER JOIN RicGenerale ON Ricevuta.IdRg = RicGenerale.IdRg) LEFT JOIN Comuni ON Go.IdCR = Comuni.IdC
GROUP BY Causale.Causale, Ricevuta.Data, Ricevuta.Pagato, Ricevuta.Stampa, Ricevuta.Selezione, Go.Cognome, Go.Nome, RicGenerale.Data, Ricevuta.IdR, Ricevuta.IdRg, Ricevuta.IdP, Ricevuta.IdC, Causale.Ordina, Comuni.Comune, Go.Via, Go.[davcna koda]
HAVING (((Ricevuta.Selezione)=True));
