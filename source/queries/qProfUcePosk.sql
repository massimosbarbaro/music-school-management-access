SELECT Scuola.AnnoS, Go.Sede, Go.DataN, [Prof.Cognome] & " " & [Prof.Nome] AS NominativoProf, [Go.Cognome] & " " & [Go.Nome] AS NominativoUc, Go.tel, Go.mail, Go.cel, Materia.Materia, Scuola.Razred, Scuola.Ore, Podruzica.Dove, Scuola.Posk
FROM ((Prof RIGHT JOIN ([Go] INNER JOIN Scuola ON Go.IdP=Scuola.IdP) ON Prof.IdPr=Scuola.IdPr) LEFT JOIN Materia ON Scuola.IdM=Materia.IdM) LEFT JOIN Podruzica ON Scuola.IdD=Podruzica.IdD
GROUP BY Scuola.AnnoS, Go.Sede, Go.DataN, [Prof.Cognome] & " " & [Prof.Nome], [Go.Cognome] & " " & [Go.Nome], Go.tel, Go.mail, Go.cel, Materia.Materia, Scuola.Razred, Scuola.Ore, Podruzica.Dove, Scuola.Posk
HAVING (((Scuola.AnnoS) Like [Inserire Anno Scolastico]) AND ((Scuola.Posk)=-1));
