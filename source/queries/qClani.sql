SELECT [sede] & "/" & go.IdP AS St, [Cognome] & " " & [Nome] AS Nominativo, Go.DataN, Go.[davcna koda], RicGenerale.IdRg, Ricevuta.IdC, DateDiff("m",[DataN],Date()) AS DataKontrol, Causale.Causale
FROM (([Go] INNER JOIN Ricevuta ON Go.IdP=Ricevuta.IdP) INNER JOIN RicGenerale ON Ricevuta.IdRg=RicGenerale.IdRg) INNER JOIN Causale ON Ricevuta.IdC=Causale.IdC
GROUP BY [sede] & "/" & go.IdP, [Cognome] & " " & [Nome], Go.DataN, Go.[davcna koda], RicGenerale.IdRg, Ricevuta.IdC, DateDiff("m",[DataN],Date()), Causale.Causale
HAVING (((DateDiff("m",[DataN],Date()))>=216) AND ((Causale.Causale) Like [Causale Solsko leto?]))
ORDER BY [Cognome] & " " & [Nome];
