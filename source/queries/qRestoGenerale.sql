SELECT Go.IdP, Scuola.AnnoS, Go.Cognome, Go.Nome, Go.tel, Sum(Ricevuta.Dovuto) AS SommaDiDovuto, Sum(Ricevuta.Pagato) AS SommaDiPagato, Sum([Pagato]-[Dovuto]) AS Resto, Ricevuta.Stampa
FROM (([Go] INNER JOIN Ricevuta ON Go.IdP=Ricevuta.IdP) INNER JOIN Causale ON Ricevuta.IdC=Causale.IdC) LEFT JOIN Scuola ON Go.IdP=Scuola.IdP
GROUP BY Go.IdP, Scuola.AnnoS, Go.Cognome, Go.Nome, Go.tel, Ricevuta.Stampa
HAVING (((Scuola.AnnoS) Like [Solsko leto?]));
