SELECT Scuola.AnnoS, Go.Sede, [Prof.Cognome] & " " & [Prof.Nome] AS NominativoProf, Count([Go.Cognome] & " " & [Go.Nome]) AS NominativoUc, Materia.Stejemo, Sum(Scuola.Ore) AS SommaDiOre
FROM ((Prof RIGHT JOIN ([Go] INNER JOIN Scuola ON Go.IdP = Scuola.IdP) ON Prof.IdPr = Scuola.IdPr) LEFT JOIN Materia ON Scuola.IdM = Materia.IdM) LEFT JOIN Podruzica ON Scuola.IdD = Podruzica.IdD
GROUP BY Scuola.AnnoS, Go.Sede, [Prof.Cognome] & " " & [Prof.Nome], Materia.Stejemo, Scuola.Posk
HAVING (((Scuola.AnnoS) Like [Inserire Anno Scolastico]) AND ((Materia.Stejemo) Like "st-*") AND ((Scuola.Posk)=0));
