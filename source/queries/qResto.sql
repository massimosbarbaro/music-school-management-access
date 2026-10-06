SELECT Go.IdP, Go.Cognome, Go.Nome, Go.tel, Sum(Ricevuta.Dovuto) AS SommaDiDovuto, Sum(Ricevuta.Pagato) AS SommaDiPagato, Sum([Pagato]-[Dovuto]) AS Resto
FROM ([Go] INNER JOIN Ricevuta ON Go.IdP = Ricevuta.IdP) INNER JOIN Causale ON Ricevuta.IdC = Causale.IdC
GROUP BY Go.IdP, Go.Cognome, Go.Nome, Go.tel
HAVING (((Sum([Pagato]-[Dovuto]))<>0));
