SELECT Ricevuta.IdR, Ricevuta.IdRg, Ricevuta.IdP, Ricevuta.Selezione, Ricevuta.IdC, Starsi.Ricevuta
FROM (Ricevuta INNER JOIN [Go] ON Ricevuta.IdP=Go.IdP) INNER JOIN (Starsi INNER JOIN LSP ON Starsi.IdS=LSP.IdS) ON Go.IdP=LSP.IdP
GROUP BY Ricevuta.IdR, Ricevuta.IdRg, Ricevuta.IdP, Ricevuta.Selezione, Ricevuta.IdC, Starsi.Ricevuta
HAVING (((Ricevuta.IdP)=17) AND ((Ricevuta.Selezione)=-1) AND ((Starsi.Ricevuta)=-1));
