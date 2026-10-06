SELECT Year(Ricevuta.Data) AS Anno, Month(Ricevuta.Data) AS Mese, Go.IdP, Ricevuta.IdR, Go.Cognome, Go.Nome, Causale.IdC, Causale.Causale, Sum(Ricevuta.Dovuto) AS SommaDiDovuto, Sum(Ricevuta.Pagato) AS SommaDiPagato, Sum([Pagato]-[Dovuto]) AS Resto, Causale.Ordina, Ricevuta.Stampa, Ricevuta.Nota
FROM ((Ricevuta LEFT JOIN RicGenerale ON Ricevuta.IdRg=RicGenerale.IdRg) INNER JOIN Causale ON Ricevuta.IdC=Causale.IdC) INNER JOIN [Go] ON Ricevuta.IdP=Go.IdP
GROUP BY Year(Ricevuta.Data), Month(Ricevuta.Data), Go.IdP, Ricevuta.IdR, Go.Cognome, Go.Nome, Causale.IdC, Causale.Causale, Causale.Ordina, Ricevuta.Stampa, Ricevuta.Nota
HAVING (((Sum([Pagato]-[Dovuto]))<0)) OR (((Sum(Ricevuta.Dovuto))=0))
ORDER BY Go.Cognome, Go.Nome;
