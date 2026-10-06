SELECT Scuola.IdP, Scuola.AnnoS, Scuola.Posk, Materia.Materia
FROM Scuola INNER JOIN Materia ON Scuola.IdM = Materia.IdM
GROUP BY Scuola.IdP, Scuola.AnnoS, Scuola.Posk, Materia.Materia
HAVING (((Scuola.AnnoS) Like [Å olsko leto?]));
