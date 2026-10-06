SELECT Go.IdP, [Cognome] & " " & [Nome] AS Nominativo, Go.Nome, Go.tel, Causale.Causale, Sum(Ricevuta.Dovuto) AS SommaDiDovuto, Ricevuta.Data, Sum(Ricevuta.Pagato) AS SommaDiPagato, Sum([Pagato]-[Dovuto]) AS Resto, Ricevuta.Nota, Ricevuta.Stampa, Causale.IdC, Ricevuta.IdR, Causale.Ordina, Ricevuta.Placano
FROM ([Go] INNER JOIN Ricevuta ON Go.IdP=Ricevuta.IdP) INNER JOIN Causale ON Ricevuta.IdC=Causale.IdC
GROUP BY Go.IdP, [Cognome] & " " & [Nome], Go.Nome, Go.tel, Causale.Causale, Causale.Ordina, Ricevuta.Data, Ricevuta.Nota, Ricevuta.Stampa, Causale.IdC, Ricevuta.IdR, Causale.Ordina, Ricevuta.Placano
HAVING (((Causale.Causale) Like [Inserire SL Causale]))
ORDER BY Causale.Ordina DESC , Causale.Ordina;
