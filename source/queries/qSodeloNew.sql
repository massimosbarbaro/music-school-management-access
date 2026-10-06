SELECT Sodelo.IdS, Sodelo.Organizator, Sodelo.Pobude, Sodelo.TipPobude, Sodelo.Kraj, Sodelo.IdC, Sodelo.Da, Sodelo.A, Sodelo.Solsko, LSPPr.IdP, LSPPr.IdPr, LSPPr.Skupine, LSPPr.IdM, LSPPr.Pobude
FROM Sodelo INNER JOIN LSPPr ON Sodelo.IdS=LSPPr.IdS;
