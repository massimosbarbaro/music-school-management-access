SELECT Comuni.IdC, Comuni.Comune, Comuni.Slov, Comuni2.Comune, Comuni2.Slov
FROM Comuni INNER JOIN Comuni2 ON Comuni.IdC = Comuni2.IdC
WHERE ((Not (Comuni.Slov) Is Null));
