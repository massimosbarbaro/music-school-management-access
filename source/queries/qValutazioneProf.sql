SELECT LPPrVal.IdV, LPPrVal.IdP, LPPrVal.IdPr, LPPrVal.Valutazione, LPPrVal.Solsko, LPPrVal.IdM
FROM LPPrVal
WHERE (((LPPrVal.IdPr)=Forms!fValutazioneP!cmbIdPr));
