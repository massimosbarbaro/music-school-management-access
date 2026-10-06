SELECT Sodelo.IdS, Sodelo.Solsko, Sodelo.Organizator, Sodelo.Pobude, Sodelo.TipPobude, Sodelo.Kraj, Sodelo.IdC, Sodelo.Da, Sodelo.A, LSPPr.IdP, LSPPr.IdPr, LSPPr.Skupine, LSPPr.IdM, LSPPr.Pobude
FROM LSPPr INNER JOIN Sodelo ON LSPPr.IdS=Sodelo.IdS;
