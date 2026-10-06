SELECT COSTI2016IObrok.AnnoS AS Espr1, COSTI2016IObrok.Sede AS Espr2, COSTI2016IObrok.Dove AS Espr3, COSTI2016IObrok.NominativoProf AS Espr4, COSTI2016IObrok.NominativoUc AS Espr5, COSTI2016IObrok.Ore AS Espr6, COSTI2016IObrok.Stejemo AS Espr7, Sum(COSTI2016IObrok.SommaDiDovuto) AS SommaDiSommaDiDovuto, Sum(COSTI2016IObrok.SommaDiPagato) AS SommaDiSommaDiPagato INTO [controllo doppi]
FROM COSTI2016IObrok
GROUP BY COSTI2016IObrok.AnnoS, COSTI2016IObrok.Sede, COSTI2016IObrok.Dove, COSTI2016IObrok.NominativoProf, COSTI2016IObrok.NominativoUc, COSTI2016IObrok.Ore, COSTI2016IObrok.Stejemo;
