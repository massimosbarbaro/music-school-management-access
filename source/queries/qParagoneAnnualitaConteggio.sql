SELECT Go.Sede, [Prof]![Cognome] & " " & [Prof]![Nome] AS NominativoProf, Materia.Materia, Podruzica.Dove, Count([Go]![Cognome] & " " & [Go]![Nome]) AS Ucenec, Scuola.AnnoS, Scuola.Posk
FROM (Materia INNER JOIN (Prof INNER JOIN ([Go] INNER JOIN Scuola ON Go.IdP=Scuola.IdP) ON Prof.IdPr=Scuola.IdPr) ON Materia.IdM=Scuola.IdM) INNER JOIN Podruzica ON Scuola.IdD=Podruzica.IdD
GROUP BY Go.Sede, [Prof]![Cognome] & " " & [Prof]![Nome], Materia.Materia, Podruzica.Dove, Scuola.AnnoS, Scuola.Posk
HAVING (((Scuola.AnnoS)="2015/2016") AND ((Scuola.Posk)=0)) OR (((Scuola.AnnoS)="2016/2017") AND ((Scuola.Posk)=0))
ORDER BY [Prof]![Cognome] & " " & [Prof]![Nome], Materia.Materia, Podruzica.Dove, Count([Go]![Cognome] & " " & [Go]![Nome]);
