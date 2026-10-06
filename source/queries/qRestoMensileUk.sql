SELECT Year(Ricevuta.Data) AS Anno, Month(Ricevuta.Data) AS Mese, Causale.Causale, Sum(Ricevuta.Dovuto) AS SommaDiDovuto, Sum(Ricevuta.Pagato) AS SommaDiPagato, Sum([Pagato]-[Dovuto]) AS Resto, Causale.Ordina, Go.Sede
FROM (([Go] INNER JOIN Ricevuta ON Go.IdP=Ricevuta.IdP) INNER JOIN Causale ON Ricevuta.IdC=Causale.IdC) LEFT JOIN RicGenerale ON Ricevuta.IdRg=RicGenerale.IdRg
GROUP BY Year(Ricevuta.Data), Month(Ricevuta.Data), Causale.Causale, Causale.Ordina, Go.Sede
HAVING (((Causale.Causale) Like [Inserire Anno Causale]) AND ((Go.Sede)="kd"));
