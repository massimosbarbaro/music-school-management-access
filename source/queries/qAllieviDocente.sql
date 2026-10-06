SELECT Go.IdP, Go.Cognome, Go.Nome, Go.DataN, Scuola.IdPr
FROM [Go] INNER JOIN Scuola ON Go.IdP=Scuola.IdP;
