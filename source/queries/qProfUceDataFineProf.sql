SELECT Scuola.AnnoS, Go.Sede, [Prof.Cognome] & " " & [Prof.Nome] AS NominativoProf, Materia.Stejemo, Podruzica.Dove
FROM ((Prof RIGHT JOIN ([Go] INNER JOIN Scuola ON Go.IdP=Scuola.IdP) ON Prof.IdPr=Scuola.IdPr) LEFT JOIN Materia ON Scuola.IdM=Materia.IdM) LEFT JOIN Podruzica ON Scuola.IdD=Podruzica.IdD
GROUP BY Scuola.AnnoS, Go.Sede, [Prof.Cognome] & " " & [Prof.Nome], Materia.Materia, Materia.Stejemo, Podruzica.Dove, Scuola.Posk
HAVING (((Scuola.AnnoS) Like [Inserire Anno Scolastico]) AND ((Scuola.Posk)=0));
