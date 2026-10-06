# Table schema

## Causale

| Field | Type | Size |
|---|---|---|
| IdC | 4 | 4 |
| Causale | 10 | 250 |
| Importo | 4 | 4 |
| Ordina | 4 | 4 |

## Comuni

| Field | Type | Size |
|---|---|---|
| IdC | 7 | 8 |
| Comune | 10 | 255 |
| Slov | 10 | 250 |
| Provincia | 10 | 255 |
| Regione | 10 | 255 |
| IdR | 4 | 4 |
| CAP | 7 | 8 |
| CodFisco | 10 | 255 |
| IdS | 4 | 4 |
| Telefono | 10 | 50 |
| Indirizzo | 10 | 250 |
| e-mail | 10 | 50 |
| fax | 10 | 50 |

## controllo doppi Totale

| Field | Type | Size |
|---|---|---|
| AnnoS | 10 | 50 |
| Sede | 10 | 50 |
| Dove | 10 | 150 |
| NominativoProf | 10 | 255 |
| NominativoUc | 10 | 255 |
| Ore | 6 | 4 |
| Stejemo | 10 | 50 |
| SommaDiSommaDiDovuto | 7 | 8 |
| SommaDiSommaDiPagato | 7 | 8 |

## COSTI2016Totale

| Field | Type | Size |
|---|---|---|
| AnnoS | 10 | 50 |
| Sede | 10 | 50 |
| Dove | 10 | 150 |
| NominativoProf | 10 | 255 |
| NominativoUc | 10 | 255 |
| Ore | 6 | 4 |
| Stejemo | 10 | 50 |
| Causale | 10 | 250 |
| SommaDiDovuto | 7 | 8 |
| SommaDiPagato | 7 | 8 |

## DocumentiUc

| Field | Type | Size |
|---|---|---|
| IdFoto | 4 | 4 |
| IdP | 4 | 4 |
| Foto | 11 | 0 |
| Note | 10 | 50 |

## Errori di incollamento

| Field | Type | Size |
|---|---|---|
| IdC | 4 | 4 |
| Causale | 10 | 255 |
| Importo | 4 | 4 |
| Ordina | 4 | 4 |

## Foto

| Field | Type | Size |
|---|---|---|
| IdFoto | 4 | 4 |
| IdP | 4 | 4 |
| Foto | 11 | 0 |
| Note | 10 | 50 |

## FotoProf

| Field | Type | Size |
|---|---|---|
| IdFoto | 4 | 4 |
| IdPr | 4 | 4 |
| Foto | 11 | 0 |
| Note | 10 | 50 |

## Go

| Field | Type | Size |
|---|---|---|
| IdP | 4 | 4 |
| Sede | 10 | 50 |
| Cognome | 10 | 255 |
| Nome | 10 | 255 |
| LuogoN | 10 | 255 |
| IdCN | 4 | 4 |
| DataN | 8 | 8 |
| davcna koda | 10 | 255 |
| Via | 10 | 255 |
| Citta | 10 | 255 |
| IdCR | 4 | 4 |
| Cap | 10 | 255 |
| tel | 10 | 50 |
| mail | 10 | 50 |
| cel | 10 | 50 |
| PIscr | 10 | 255 |
| Note | 10 | 250 |
| DataS | 8 | 8 |
| DataD | 8 | 8 |
| DataA | 8 | 8 |
| DataE | 8 | 8 |
| Motiv | 10 | 250 |

## Konservatori

| Field | Type | Size |
|---|---|---|
| IdK | 4 | 4 |
| Konservatori | 10 | 150 |
| Luogo | 10 | 150 |
| Accordo | 10 | 50 |
| Note | 10 | 50 |

## LNPPr

| Field | Type | Size |
|---|---|---|
| IdN | 4 | 4 |
| IdP | 4 | 4 |
| IdPr | 4 | 4 |
| Skupine | 10 | 50 |
| IdM | 4 | 4 |
| Opombe | 10 | 250 |
| Glasba | 10 | 250 |

## LPPrVal

| Field | Type | Size |
|---|---|---|
| IdV | 4 | 4 |
| IdP | 4 | 4 |
| IdPr | 4 | 4 |
| Valutazione | 12 | 0 |
| Solsko | 10 | 50 |
| IdM | 4 | 4 |

## LSP

| Field | Type | Size |
|---|---|---|
| IdS | 4 | 4 |
| IdP | 4 | 4 |

## LSPPr

| Field | Type | Size |
|---|---|---|
| IdS | 4 | 4 |
| IdP | 4 | 4 |
| IdPr | 4 | 4 |
| Skupine | 10 | 50 |
| IdM | 4 | 4 |
| Pobude | 10 | 250 |

## LTPPr

| Field | Type | Size |
|---|---|---|
| IdT | 4 | 4 |
| IdP | 4 | 4 |
| IdPr | 4 | 4 |
| Skupine | 10 | 50 |
| IdM | 4 | 4 |
| Kat | 10 | 50 |
| Nagrada | 10 | 50 |
| Toc | 7 | 8 |
| Kotiz | 7 | 8 |

## Materia

| Field | Type | Size |
|---|---|---|
| IdM | 4 | 4 |
| Materia | 10 | 50 |
| Spricevalo | 10 | 150 |
| Stejemo | 10 | 50 |
| Note | 10 | 50 |

## Materia24

| Field | Type | Size |
|---|---|---|
| IdM | 4 | 4 |
| Materia | 10 | 50 |
| Spricevalo | 10 | 150 |
| Stejemo | 10 | 50 |
| Note | 10 | 50 |

## Nastop

| Field | Type | Size |
|---|---|---|
| IdN | 4 | 4 |
| Organizator | 10 | 250 |
| Nastop | 10 | 250 |
| TipNastop | 10 | 250 |
| Kraj | 10 | 50 |
| IdC | 4 | 4 |
| Da | 8 | 8 |
| A | 8 | 8 |
| Solsko | 10 | 50 |
| Slika | 11 | 0 |

## Nazioni

| Field | Type | Size |
|---|---|---|
| IdS | 7 | 8 |
| descrizione | 10 | 255 |
| cod_catasto | 10 | 255 |

## Podruzica

| Field | Type | Size |
|---|---|---|
| IdD | 4 | 4 |
| Dove | 10 | 150 |
| Note | 10 | 50 |

## PorociloProf

| Field | Type | Size |
|---|---|---|
| IdD | 4 | 4 |
| IdPr | 4 | 4 |
| Solsko | 10 | 50 |
| Data | 8 | 8 |
| Porocilo | 12 | 0 |

## Prof

| Field | Type | Size |
|---|---|---|
| IdPr | 4 | 4 |
| Cognome | 10 | 255 |
| Nome | 10 | 255 |
| DataN | 8 | 8 |
| davcna | 10 | 255 |
| Via | 10 | 255 |
| Cap | 10 | 255 |
| IdLN | 4 | 4 |
| IdLR | 4 | 4 |
| Tel | 10 | 50 |
| Mail | 10 | 50 |
| cel | 10 | 50 |
| IdK | 4 | 4 |
| Anno | 8 | 8 |
| Voto | 10 | 50 |
| IdM | 4 | 4 |
| LuogoN | 10 | 50 |
| Studi | 10 | 250 |
| DataSca | 8 | 8 |
| Pass | 10 | 50 |

## Ricevuta

| Field | Type | Size |
|---|---|---|
| IdR | 4 | 4 |
| IdP | 4 | 4 |
| IdRg | 4 | 4 |
| IdC | 4 | 4 |
| Data | 8 | 8 |
| Pagato | 6 | 4 |
| Dovuto | 6 | 4 |
| Stampa | 10 | 250 |
| Nota | 10 | 250 |
| Selezione | 1 | 1 |
| Placano | 10 | 255 |

## RicGenerale

| Field | Type | Size |
|---|---|---|
| IdRg | 4 | 4 |
| Data | 8 | 8 |
| Note | 10 | 50 |

## Scuola

| Field | Type | Size |
|---|---|---|
| IdP | 4 | 4 |
| IdPr | 4 | 4 |
| IdM | 4 | 4 |
| Razred | 10 | 50 |
| Voto | 10 | 50 |
| IdD | 4 | 4 |
| IdK | 4 | 4 |
| Ore | 6 | 4 |
| AnnoS | 10 | 50 |
| Note | 10 | 50 |
| Spric | 1 | 1 |
| Potrd | 1 | 1 |
| Data | 8 | 8 |
| Livello | 10 | 50 |
| Razred2 | 10 | 50 |
| Ore2 | 6 | 4 |
| DataI | 8 | 8 |
| DataF | 8 | 8 |
| DataI2 | 8 | 8 |
| DataF2 | 8 | 8 |
| Posk | 1 | 1 |

## Seja

| Field | Type | Size |
|---|---|---|
| IdS | 4 | 4 |
| Data | 8 | 8 |
| Seja | 12 | 0 |
| TipSeja | 10 | 250 |
| Sedez | 10 | 50 |
| Slika | 11 | 0 |

## Sodelo

| Field | Type | Size |
|---|---|---|
| IdS | 4 | 4 |
| Organizator | 10 | 250 |
| Pobude | 10 | 250 |
| TipPobude | 10 | 250 |
| Kraj | 10 | 50 |
| IdC | 4 | 4 |
| Da | 8 | 8 |
| A | 8 | 8 |
| Solsko | 10 | 50 |

## Sola

| Field | Type | Size |
|---|---|---|
| AnnoS | 10 | 50 |
| IdP | 4 | 4 |
| IdC | 10 | 50 |
| Sola | 10 | 250 |
| Sek | 10 | 150 |
| Razred | 10 | 50 |
| Note | 10 | 50 |

## SolaProf

| Field | Type | Size |
|---|---|---|
| AnnoS | 10 | 50 |
| IdPr | 4 | 4 |
| IdC | 4 | 4 |
| Sola | 10 | 250 |
| Tip | 10 | 150 |
| Desc | 10 | 250 |
| Note | 10 | 50 |
| Voto | 10 | 50 |
| IdM | 4 | 4 |

## Starsi

| Field | Type | Size |
|---|---|---|
| IdS | 4 | 4 |
| Cognome | 10 | 255 |
| Nome | 10 | 255 |
| DataN | 8 | 8 |
| davcna | 10 | 255 |
| Via | 10 | 255 |
| Cap | 10 | 255 |
| Luogo | 10 | 50 |
| IdLN | 4 | 4 |
| IdLR | 4 | 4 |
| Ricevuta | 1 | 1 |
| Tel | 10 | 50 |
| Mail | 10 | 50 |
| cel | 10 | 50 |
| DataS | 8 | 8 |

## Switchboard Items

| Field | Type | Size |
|---|---|---|
| SwitchboardID | 4 | 4 |
| ItemNumber | 3 | 2 |
| ItemText | 10 | 255 |
| Command | 3 | 2 |
| Argument | 10 | 255 |

## Tabella1

| Field | Type | Size |
|---|---|---|
| ID | 4 | 4 |
| Campo1 | 10 | 255 |

## Tekma

| Field | Type | Size |
|---|---|---|
| IdT | 4 | 4 |
| Solsko | 10 | 50 |
| Tekma | 10 | 250 |
| Kraj | 10 | 50 |
| IdC | 4 | 4 |
| Da | 8 | 8 |
| A | 8 | 8 |

## Valutazione

| Field | Type | Size |
|---|---|---|
| IdV | 4 | 4 |
| IdP | 4 | 4 |
| IdPr | 4 | 4 |
| IdM | 4 | 4 |
| Valutazione | 12 | 0 |

## ZBOR

| Field | Type | Size |
|---|---|---|
| AnnoS | 10 | 50 |
| IdP | 4 | 4 |
| Cognome | 10 | 255 |
| Nome | 10 | 255 |
| Materia | 10 | 50 |

