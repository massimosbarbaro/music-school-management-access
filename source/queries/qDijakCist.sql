SELECT Scuola.AnnoS, Go.IdP, Go.Sede, Go.Cognome, Go.Nome, Go.DataN, Comuni.Comune & " / " & Comuni.Slov AS Comune, Go.[davcna koda], Go.Via, Comuni_1.Comune & "/ " & Comuni_1.Slov AS ComuneR, Comuni_1.CAP, Go.tel, Go.mail, Go.cel, Go.PIscr
FROM (([Go] LEFT JOIN Comuni ON Go.IdCN=Comuni.IdC) LEFT JOIN Comuni AS Comuni_1 ON Go.IdCR=Comuni_1.IdC) INNER JOIN Scuola ON Go.IdP=Scuola.IdP
GROUP BY Scuola.AnnoS, Go.IdP, Go.Sede, Go.Cognome, Go.Nome, Go.DataN, Comuni.Comune & " / " & Comuni.Slov, Go.[davcna koda], Go.Via, Comuni_1.Comune & "/ " & Comuni_1.Slov, Comuni_1.CAP, Go.tel, Go.mail, Go.cel, Go.PIscr
HAVING (((Scuola.AnnoS) Like [Solsko leto?]))
ORDER BY Go.Cognome, Go.Nome;
