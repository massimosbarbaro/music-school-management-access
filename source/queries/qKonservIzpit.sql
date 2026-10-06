SELECT Scuola.AnnoS, Go.Sede, [Cognome] & " " & [Nome] AS Nominativo, Konservatori.Konservatori, Konservatori.Luogo, Scuola.Potrd, Scuola.Data, Scuola.Livello, Scuola.Voto
FROM Konservatori INNER JOIN (Materia INNER JOIN ([Go] INNER JOIN Scuola ON Go.IdP=Scuola.IdP) ON Materia.IdM=Scuola.IdM) ON Konservatori.IdK=Scuola.IdK
WHERE (((Scuola.AnnoS) Like [Inserire anno scolastico]) AND ((Scuola.Potrd)=-1))
ORDER BY Scuola.AnnoS, Go.Sede, [Cognome] & " " & [Nome];
