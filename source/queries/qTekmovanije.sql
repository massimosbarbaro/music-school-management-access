SELECT Tekma.Solsko, Go.Sede, Go!Cognome & " " & Go!Nome AS Nominativo, Tekma.Tekma, Comuni.Comune, Comuni.Slov, Tekma.Da, Tekma.A, Tekma.Kraj, LTPPr.Kat, LTPPr.Nagrada, LTPPr.Toc
FROM [Go] INNER JOIN (Prof INNER JOIN ((Comuni RIGHT JOIN Tekma ON Comuni.IdC=Tekma.IdC) INNER JOIN LTPPr ON Tekma.IdT=LTPPr.IdT) ON Prof.IdPr=LTPPr.IdPr) ON Go.IdP=LTPPr.IdP
ORDER BY Go.Sede, Go!Cognome & " " & Go!Nome;
