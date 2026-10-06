SELECT Scuola.AnnoS, Go.Sede, [Prof.Cognome] & " " & [Prof.Nome] AS NominativoProf, [Go.Cognome] & " " & [Go.Nome] AS NominativoUc, Materia.Materia, Scuola.Razred, Scuola.Ore, Scuola.DataI, Scuola.DataF, Scuola.Ore2, Scuola.DataI2, Scuola.DataF2, Scuola.Posk, Podruzica.Dove
FROM ((Prof RIGHT JOIN ([Go] INNER JOIN Scuola ON Go.IdP=Scuola.IdP) ON Prof.IdPr=Scuola.IdPr) LEFT JOIN Materia ON Scuola.IdM=Materia.IdM) LEFT JOIN Podruzica ON Scuola.IdD=Podruzica.IdD
GROUP BY Scuola.AnnoS, Go.Sede, [Prof.Cognome] & " " & [Prof.Nome], [Go.Cognome] & " " & [Go.Nome], Materia.Materia, Scuola.Razred, Scuola.Ore, Scuola.DataI, Scuola.DataF, Scuola.Ore2, Scuola.DataI2, Scuola.DataF2, Scuola.Posk, Podruzica.Dove
HAVING (((Scuola.AnnoS) Like [Inserire Anno Scolastico]) AND ((Scuola.Posk)=0));
