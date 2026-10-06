SELECT Causale.Causale, Ricevuta.Data, Ricevuta.Pagato, Ricevuta.Stampa, Ricevuta.Selezione, Go.Cognome, Go.Nome, RicGenerale.Data, Ricevuta.IdR, Ricevuta.IdRg, Ricevuta.IdP, Ricevuta.IdC, starsi.Cognome & " " & starsi.nome AS Genitore, Starsi.IdS, Starsi.Ricevuta, Causale.Ordina
FROM (((Causale INNER JOIN Ricevuta ON Causale.IdC=Ricevuta.IdC) INNER JOIN [Go] ON Ricevuta.IdP=Go.IdP) INNER JOIN (Starsi INNER JOIN LSP ON Starsi.IdS=LSP.IdS) ON Go.IdP=LSP.IdP) INNER JOIN RicGenerale ON Ricevuta.IdRg=RicGenerale.IdRg
GROUP BY Causale.Causale, Ricevuta.Data, Ricevuta.Pagato, Ricevuta.Stampa, Ricevuta.Selezione, Go.Cognome, Go.Nome, RicGenerale.Data, Ricevuta.IdR, Ricevuta.IdRg, Ricevuta.IdP, Ricevuta.IdC, starsi.Cognome & " " & starsi.nome, Starsi.IdS, Starsi.Ricevuta, Causale.Ordina
HAVING (((Ricevuta.Selezione)=-1) AND ((Starsi.Ricevuta)=-1))
ORDER BY Causale.Ordina;
