SELECT Scuola.AnnoS, [Prof.Cognome] & " " & [Prof.Nome] AS NominativoProf, Materia.Stejemo, Scuola.Razred, Avg(Scuola.Ore) AS MediaDiOre, Podruzica.Dove
FROM ((Prof RIGHT JOIN Scuola ON Prof.IdPr=Scuola.IdPr) LEFT JOIN Materia ON Scuola.IdM=Materia.IdM) LEFT JOIN Podruzica ON Scuola.IdD=Podruzica.IdD
GROUP BY Scuola.AnnoS, [Prof.Cognome] & " " & [Prof.Nome], Materia.Stejemo, Scuola.Razred, Podruzica.Dove
HAVING (((Scuola.AnnoS) Like [Inserire Anno Scolastico]) AND ((Materia.Stejemo) Like "st-*"));
