SELECT Scuola.IdP, Scuola.AnnoS, [Go.Cognome] & " " & [Go.Nome] AS Nominativo, Go.DataN, Go.tel, Go.cel, Go.mail, Go.Posk, Scuola.Livello, [Prof.Nome] & " " & [Prof.Cognome] AS NomeP, Materia_1.Spricevalo, Go.Note, Podruzica.Dove
FROM ((Comuni RIGHT JOIN (Konservatori RIGHT JOIN (Prof RIGHT JOIN ([Go] LEFT JOIN Scuola ON Go.IdP=Scuola.IdP) ON Prof.IdPr=Scuola.IdPr) ON Konservatori.IdK=Scuola.IdK) ON Comuni.IdC=Go.IdCN) LEFT JOIN Materia AS Materia_1 ON Scuola.IdM=Materia_1.IdM) LEFT JOIN Podruzica ON Scuola.IdD=Podruzica.IdD
WHERE (((Go.Posk)=-1));
