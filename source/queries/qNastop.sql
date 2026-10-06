SELECT [Go.Cognome] & " " & [Go.Nome] AS Nominativo, Nastop.Organizator, LNPPr.IdN, Nastop.Nastop, Nastop.TipNastop, Nastop.Kraj, Nastop.Da, Nastop.A, Nastop.Solsko, Comuni.Comune, Comuni.Slov, [Prof.Cognome] & " " & [Prof.Nome] AS NominativoP, LNPPr.Skupine, Materia.Materia, LNPPr.Glasba, LNPPr.Opombe
FROM (((([Go] INNER JOIN LNPPr ON Go.IdP=LNPPr.IdP) INNER JOIN Nastop ON LNPPr.IdN=Nastop.IdN) INNER JOIN Materia ON LNPPr.IdM=Materia.IdM) INNER JOIN Prof ON LNPPr.IdPr=Prof.IdPr) INNER JOIN Comuni ON Nastop.IdC=Comuni.IdC
WHERE (((LNPPr.IdN)=Forms!fNastopProf!IdN));
