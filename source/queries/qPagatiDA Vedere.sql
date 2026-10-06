SELECT Go.IdP, [Cognome] & " " & [Nome] AS Nominativo, Go.Nome, Go.tel, Causale.Causale, Ricevuta.Dovuto, Ricevuta.Data, Ricevuta.Pagato, ([Pagato]-[Dovuto]) AS Resto, Ricevuta.Nota, Ricevuta.Stampa, Causale.IdC, Ricevuta.IdR, Causale.Ordina, Scuola.AnnoS
FROM (([Go] INNER JOIN Ricevuta ON Go.IdP = Ricevuta.IdP) INNER JOIN Causale ON Ricevuta.IdC = Causale.IdC) INNER JOIN Scuola ON Go.IdP = Scuola.IdP
GROUP BY Go.IdP, [Cognome] & " " & [Nome], Go.Nome, Go.tel, Causale.Causale, Ricevuta.Dovuto, Ricevuta.Data, Ricevuta.Pagato, Ricevuta.Nota, Ricevuta.Stampa, Causale.IdC, Ricevuta.IdR, Causale.Ordina, Scuola.AnnoS
HAVING (((Go.IdP)=186) AND ((Scuola.AnnoS) Like [Inserire Solsko leto]))
ORDER BY Causale.Ordina;
