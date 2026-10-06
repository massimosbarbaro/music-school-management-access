SELECT Tekma.IdT, Tekma.Solsko, Tekma.Tekma, Tekma.Kraj, Tekma.IdC, Tekma.Da, Tekma.A, LTPPr.IdP, LTPPr.Skupine, LTPPr.Kat, LTPPr.Nagrada, LTPPr.Toc, LTPPr.Kotiz, LTPPr.IdPr
FROM LTPPr INNER JOIN Tekma ON LTPPr.IdT=Tekma.IdT;
