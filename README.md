# Sola: student, fees and certificates management for a multi-site music school

[![DOI](https://zenodo.org/badge/DOI/10.5281/zenodo.23205212.svg)](https://doi.org/10.5281/zenodo.23205212)

*Gestionale di una scuola di musica con più sedi: allievi, quote, ricevute, pagelle e attestati*

**db** · 2015–2023 · version 128  
Author: **Massimo Sbarbaro** ([ORCID 0009-0006-8965-9013](https://orcid.org/0009-0006-8965-9013))

## Overview

Sola is the administration system of a Slovene-language music school with several sites in Italy. The secretariat manages students, parents and teachers, enrolments per subject and teacher, membership and enrolment fees, instalments and receipts; teachers log in to record evaluations, performances, competitions and collaborations. The application prints bilingual Slovene–Italian documents: enrolment forms, receipts for parents and for adult students, payment statements, privacy consents, school certificates per site and attestations of pre-academic exams taken under an agreement with a state conservatory. It also produces monthly balances per fee item and site, teacher and student hour statistics and the electoral lists of members for the general assembly.

I designed and programmed this application in 2015–2023. It is published here in 2026 as part of the documented record of my software work, with a permanent DOI on Zenodo.

## Main functions

- Student record with personal data, parents, membership, enrolment fee, privacy consent, receipts, documents, performances, competitions and reports (`fUc`, `fStar`).
- Enrolment per subject with teacher, class, hours, dates, grade, conservatory and pre-academic flags (`fInstrument`, `fInstrumentGroup`).
- Teachers and qualifications, teacher login and teacher area for reports, competitions and collaborations (`fProf`, `fControlProf`, `fProfGumb`).
- Fees and receipts: fee items with amounts, grouped receipt numbering with reprint, instalment schedule and payment statements (`fRicevuta`, `fRicGenerale`, `fBilKaus`, `rRacun`, `rPagatiSingoli`).
- Automatic choice between parent and adult versions of receipts and enrolment forms based on the student's age (216 months).
- Certificates per site, conservatory exam attestations, competition reports (`rSpricevalo*`, `rPoterdilo`, `rKonservIzpit`, `rTekmovanije`).
- Monthly balances per fee item and site, teacher/student hour statistics, year-on-year comparisons and exports to Excel.
- Members' lists for the general assembly, mailing lists and calendar lists.

## Data

35 tables, including `Go` (students), `Starsi` (parents), `Prof` (teachers), `Instrument` (enrolments), `Materia`, `Konservatori`, `Causale` (fee items), `Ricevuta`, `RicGenerale`, `Nastop`, `Tekma`, `Sodelovanje`.

## Technology

Microsoft Access 2000–2003 format (.mdb), VBA; bilingual Slovene–Italian interface and printouts.

## Repository contents

| Path | Content |
|---|---|
| `database/` | The Access application, emptied of all data. |
| `source/` | Plain-text export (UTF-8) of forms, reports, macros, VBA modules (`SaveAsText`) and of the SQL of every query. |
| `docs/schema.md` | Tables and fields. |

## What is not included

The database is published **empty**: every table has been emptied and the file compacted, so no record of the original data survives. Logos and names of the organisations that used the application have been removed from forms, reports and code, together with printer settings and any credential. Forms, reports, queries, macros and VBA code are otherwise unchanged and are also provided as plain text in `source/`.

## Related repositories

- [reception-community-minors-access](https://github.com/massimosbarbaro/reception-community-minors-access)
- [sound-music-archive-catalogue-access](https://github.com/massimosbarbaro/sound-music-archive-catalogue-access)

## How to cite

Use the citation metadata in [`CITATION.cff`](CITATION.cff) (GitHub: *Cite this repository*). The release is archived on Zenodo with the DOI [10.5281/zenodo.23205212](https://doi.org/10.5281/zenodo.23205212).

> Sbarbaro, Massimo. 2023. *Sola: student, fees and certificates management for a multi-site music school*. Software (db, 2015–2023), version 128. Zenodo. https://doi.org/10.5281/zenodo.23205212.

## License

Released under the [MIT License](LICENSE). © 2015 Massimo Sbarbaro.
