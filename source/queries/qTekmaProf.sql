SELECT LTPPr.IdT, LTPPr.IdP, LTPPr.IdPr, LTPPr.Skupine, LTPPr.Kat, LTPPr.Nagrada, LTPPr.Toc, LTPPr.Kotiz, LTPPr.IdM, LTPPr.Opombe
FROM LTPPr
WHERE (((LTPPr.IdPr)=Forms!fTekmaP2!cmbIdPr));
