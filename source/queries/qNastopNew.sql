SELECT Nastop.IdN, Nastop.Organizator, Nastop.Nastop, Nastop.TipNastop, Nastop.Kraj, Nastop.IdC, Nastop.Da, Nastop.A, Nastop.Solsko, LNPPr.IdP, LNPPr.IdPr, LNPPr.Skupine, LNPPr.IdM, LNPPr.Opombe
FROM LNPPr INNER JOIN Nastop ON LNPPr.IdN = Nastop.IdN;
