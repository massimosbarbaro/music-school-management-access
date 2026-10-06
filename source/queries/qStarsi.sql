SELECT Go.Cognome, Go.Nome, Starsi.Cognome, Starsi.Nome
FROM [Go] INNER JOIN (Starsi INNER JOIN LSP ON Starsi.IdS = LSP.IdS) ON Go.IdP = LSP.IdP;
