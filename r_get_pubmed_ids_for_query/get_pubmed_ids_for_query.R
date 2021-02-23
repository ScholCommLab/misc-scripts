require(rentrez)

query = '((("BMJ (Clinical research ed.)"[Journal] OR ("Journal of medical virology"[Journal])) OR ("medRxiv : the preprint server for health sciences"[Journal])) OR ("bioRxiv : the preprint server for biology"[Journal])) AND (("COVID-19" OR "COVID-19"[MeSH Terms] OR "COVID-19 Vaccines" OR "COVID-19 Vaccines"[MeSH Terms] OR "COVID-19 serotherapy" OR "COVID-19 serotherapy"[Supplementary Concept] OR "COVID-19 Nucleic Acid Testing" OR "covid-19 nucleic acid testing"[MeSH Terms] OR "COVID-19 Serological Testing" OR "covid-19 serological testing"[MeSH Terms] OR "COVID-19 Testing" OR "covid-19 testing"[MeSH Terms] OR "SARS-CoV-2" OR "sars-cov-2"[MeSH Terms] OR "Severe Acute Respiratory Syndrome Coronavirus 2" OR "NCOV" OR "2019 NCOV" OR (("coronavirus"[MeSH Terms] OR "coronavirus" OR "COV") AND 2019/11/01[PDAT] : 3000/12/31[PDAT])))'

results = entrez_search(db="pubmed", term=query, use_history = TRUE)
ids_str = entrez_fetch(db="pubmed", web_history = results$web_history, rettype = "uilist", retmode="text")
ids = strsplit(ids, "\n")

writeLines(ids_str, "pubmed_ids.txt")