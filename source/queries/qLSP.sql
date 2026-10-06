SELECT Starsi.IdS, Starsi.Cognome, Starsi.Nome, Starsi.DataN, Starsi.davcna, Starsi.Via, Starsi.Cap, Starsi.IdLN, Starsi.IdLR, Starsi.IdS, LSP.IdP, Starsi.Ricevuta
FROM Starsi INNER JOIN LSP ON Starsi.IdS=LSP.IdS;
