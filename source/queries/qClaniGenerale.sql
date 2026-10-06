SELECT [sede] & "/" & go.IdP AS St, Go.DataD, Go.DataA, [Cognome] & " " & [Nome] AS Nominativo, Comuni!Slov & " " & [DataN] AS Nascita, Go.[davcna koda], Go!Via & ",  " & Comuni_1!Slov AS Bivalisce, Go.DataE, Go.Motiv, Causale.Causale
FROM (Comuni AS Comuni_1 RIGHT JOIN ((([Go] INNER JOIN Ricevuta ON Go.IdP=Ricevuta.IdP) INNER JOIN RicGenerale ON Ricevuta.IdRg=RicGenerale.IdRg) LEFT JOIN Comuni ON Go.IdCN=Comuni.IdC) ON Comuni_1.IdC=Go.IdCR) INNER JOIN Causale ON Ricevuta.IdC=Causale.IdC
GROUP BY [sede] & "/" & go.IdP, Go.DataD, Go.DataA, [Cognome] & " " & [Nome], Comuni!Slov & " " & [DataN], Go.[davcna koda], Go!Via & ",  " & Comuni_1!Slov, Go.DataE, Go.Motiv, Causale.Causale, RicGenerale.IdRg, Ricevuta.IdC
HAVING (((Causale.Causale) Like [Clanarino?]))
ORDER BY [Cognome] & " " & [Nome];
