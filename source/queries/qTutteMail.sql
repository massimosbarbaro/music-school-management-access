SELECT Scuola.AnnoS, Go.Cognome, Go.Nome, Go.mail, Go.tel, Go.cel
FROM ((Prof RIGHT JOIN ([Go] INNER JOIN Scuola ON Go.IdP = Scuola.IdP) ON Prof.IdPr = Scuola.IdPr) LEFT JOIN Materia ON Scuola.IdM = Materia.IdM) LEFT JOIN Podruzica ON Scuola.IdD = Podruzica.IdD
GROUP BY Scuola.AnnoS, Go.Cognome, Go.Nome, Go.mail, Go.tel, Go.cel
HAVING (((Scuola.AnnoS) Like [Inserire anno scolastico]));
