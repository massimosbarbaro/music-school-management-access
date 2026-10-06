SELECT [controllo doppi Totale].NominativoUc, Count([controllo doppi Totale].NominativoUc) AS ConteggioDiNominativoUc, [controllo doppi Totale].SommaDiSommaDiDovuto, [controllo doppi Totale].SommaDiSommaDiPagato, Count([controllo doppi Totale].NominativoUc) AS ConteggioDiNominativoUc1
FROM [controllo doppi Totale]
GROUP BY [controllo doppi Totale].NominativoUc, [controllo doppi Totale].SommaDiSommaDiDovuto, [controllo doppi Totale].SommaDiSommaDiPagato
HAVING (((Count([controllo doppi Totale].NominativoUc))>1));
