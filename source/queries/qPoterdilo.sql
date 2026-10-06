SELECT Scuola.IdP, Scuola.AnnoS, [Go.Nome] & " " & [Go.Cognome] AS Nominativo, Go.Cognome, Go.Nome, Go.DataN, Comuni.Comune, Comuni.Slov, Scuola.Potrd, Scuola.Data, Scuola.Livello, Scuola.Voto, Konservatori.Luogo, [Prof.Nome] & " " & [Prof.Cognome] AS NomeP, Prof.Nome, Prof.Cognome, Materia_1.Spricevalo
FROM (Comuni RIGHT JOIN (Konservatori RIGHT JOIN (Prof RIGHT JOIN ([Go] LEFT JOIN Scuola ON Go.IdP=Scuola.IdP) ON Prof.IdPr=Scuola.IdPr) ON Konservatori.IdK=Scuola.IdK) ON Comuni.IdC=Go.IdCN) LEFT JOIN Materia AS Materia_1 ON Scuola.IdM=Materia_1.IdM
WHERE (((Scuola.Potrd)=-1));
