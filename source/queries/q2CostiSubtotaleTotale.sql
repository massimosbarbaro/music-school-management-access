SELECT COSTI2016Totale.AnnoS, COSTI2016Totale.Sede, COSTI2016Totale.Dove, COSTI2016Totale.NominativoProf, COSTI2016Totale.NominativoUc, COSTI2016Totale.Ore, COSTI2016Totale.Stejemo, Sum(COSTI2016Totale.SommaDiDovuto) AS SommaDiSommaDiDovuto, Sum(COSTI2016Totale.SommaDiPagato) AS SommaDiSommaDiPagato INTO [controllo doppi Totale]
FROM COSTI2016Totale
GROUP BY COSTI2016Totale.AnnoS, COSTI2016Totale.Sede, COSTI2016Totale.Dove, COSTI2016Totale.NominativoProf, COSTI2016Totale.NominativoUc, COSTI2016Totale.Ore, COSTI2016Totale.Stejemo;
