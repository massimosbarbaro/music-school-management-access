SELECT Go.IdP, [Cognome] & " " & [Nome] AS Nominativo, Go.Nome, Causale.IdC, Causale.Causale, Ricevuta.Dovuto, Ricevuta.Pagato, [Pagato]-[Dovuto] AS Resto, Causale.Ordina, Ricevuta.Stampa, Ricevuta.Nota, Scuola.AnnoS, Go.tel, Ricevuta.Data, Causale.Ordina
FROM (((Ricevuta LEFT JOIN RicGenerale ON Ricevuta.IdRg=RicGenerale.IdRg) INNER JOIN Causale ON Ricevuta.IdC=Causale.IdC) INNER JOIN [Go] ON Ricevuta.IdP=Go.IdP) INNER JOIN Scuola ON Go.IdP=Scuola.IdP
GROUP BY Go.IdP, [Cognome] & " " & [Nome], Go.Nome, Causale.IdC, Causale.Causale, Ricevuta.Dovuto, Ricevuta.Pagato, [Pagato]-[Dovuto], Causale.Ordina, Ricevuta.Stampa, Ricevuta.Nota, Scuola.AnnoS, Go.tel, Ricevuta.Data, Causale.Ordina
HAVING ((([Pagato]-[Dovuto])<0) AND ((Scuola.AnnoS) Like [Inserire SL]))
ORDER BY Go.Nome;
