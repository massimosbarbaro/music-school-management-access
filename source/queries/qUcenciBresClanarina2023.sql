SELECT Scuola.IdP, Scuola.IdPr, qClanarina2023.IdC, Scuola.AnnoS, Go.Cognome, Go.Nome
FROM (Scuola LEFT JOIN qClanarina2023 ON Scuola.IdP = qClanarina2023.IdP) INNER JOIN [Go] ON Scuola.IdP = Go.IdP
GROUP BY Scuola.IdP, Scuola.IdPr, qClanarina2023.IdC, Scuola.AnnoS, Go.Cognome, Go.Nome
HAVING (((qClanarina2023.IdC) Is Null) AND ((Scuola.AnnoS)="2022/2023"));
