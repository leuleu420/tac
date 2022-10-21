#Requête SPARQL
#Trouver les femmes journalistes belges nées à Bruxelles

SELECT DISTINCT ?item ?itemLabel WHERE {
  SERVICE wikibase:label { bd:serviceParam wikibase:language "[AUTO_LANGUAGE]". }
  {
    SELECT DISTINCT ?item WHERE {
      ?item p:P106 ?statement0.
      ?statement0 (ps:P106/(wdt:P279*)) wd:Q1930187.
      ?item p:P27 ?statement1.
      ?statement1 (ps:P27/(wdt:P279*)) wd:Q31.
      ?item p:P21 ?statement2.
      ?statement2 (ps:P21/(wdt:P279*)) wd:Q6581072.
      ?item p:P19 ?statement3.
      ?statement3 (ps:P19/(wdt:P279*)) wd:Q239.
    }
    LIMIT 100
  }
}
