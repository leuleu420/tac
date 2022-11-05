# TAC

Ce répertoire contient le matériel pour le cours de "Traitement automatique de corpus" ([STIC-B545](https://www.ulb.be/fr/programme/stic-b545)) donné à l'[ULB](https://ulb.be) pour l'année académique 2022-2023.


## Installation

1. Créez un compte Github et générez un `fork` du répertoire [tac](https://github.com/madewild/tac). Votre version du répertoire se trouvera alors à l'adresse `https://github.com/<YOUR-GITHUB-ID>/tac`
2. Téléchargez et installez une version récente de [Python](https://www.python.org/downloads/) (>= 3.9)
    - !! Pour les utilisateurs Windows, au moment de l'installation, cochez la case "Add Python 3.XX to PATH" et préférez installer Python à la racine du disque (C:\Python310) via le custom install.
    - !! Si votre ordinateur ne supporte pas les versions récentes de Python, vous pouvez utiliser une machine virtuelle Docker. Vous trouverez les instructions [ici](./Installation_Docker.md)
3. Téléchargez et installez [Visual Studio Code](https://code.visualstudio.com/)
4. Téléchargez et installez [Git](https://git-scm.com/downloads)
5. Dans Visual Studio Code, ouvrez un terminal (`Terminal > New Terminal`) et déplacez-vous dans le dossier qui contiendra les documents du cours (utilisez la commande `cd`)
6. Exécutez dans l'ordre les commandes suivantes:

Windows:

```bash
Set-ExecutionPolicy -Scope CurrentUser RemoteSigned
git clone https://github.com/<YOUR-GITHUB-ID>/tac
cd tac
pip install virtualenv
virtualenv tac_venv --python=python3
.\tac_venv\Scripts\activate
pip install -r requirements.txt
python -m spacy download fr_core_news_md
```

Linux / MacOS:

```bash
git clone https://github.com/<YOUR-GITHUB-ID>/tac
cd tac
pip install virtualenv
virtualenv tac_venv --python=python3 (ou: python3 -m venv tac_venv)
source tac_venv/bin/activate
pip install --upgrade pip
pip install wheel
pip install -r requirements.txt
python -m spacy download fr_core_news_md
```

7. Vous pouvez maintenant utiliser et exécuter le code qui se trouve dans les notebooks (fichiers `.ipynb`) en choisissant l'environnement `tac_venv` (en haut à droite de votre écran)

## Module 1

`s1_sql`: requêtes dans une base de données SQL

`s2_sparql`: requêtes sur l'endpoint SPARQL de _Wikidata_

`s3_api`: requêtes sur les APIs _OpenStreetMap_ et _EUcountries_ 

`s4_scrape`: scraping d'articles dans les archives du journal _Le Soir_

## Module 2

`s1_convert`: conversion de fichiers `.pdf` en fichier `.txt`, et aggrégation en un long fichier texte

`s2_explore`: statistiques de fréquences de fichiers

`s3_freq`: Analyse des fréquences, des _hapax_, recherche des mots les plus longs...

## Module 3

### Extraction de mots-cls

`s1_keyword`: utilisation de YAKE pour extraire des keywords au sein de chacun des fichiers

`s2_wordcloud`: génération d'un nuage de mots

### Reconnaissance d'entités nommées

`s3_ner`: reconnaissance d'entités à l'aide d'un modèle SpaCy

### Analyse de sentiments

`s4_sentiment`: analyse de sentiment à l'aide de Textblob

## Module 4

`s1_classification`: classification supervisée de textes

`s2_clustering`: clustering non supervisé à l'aide de K-means

`s3_sentence_tokenizer`: séparation de textes en phrases

`s4_word_embeddings`: exploration du modèle Word2Vec sur un corpus

## Module 5

`s1_language_detection`: identification de la langue d'un texte

`s2_machine_translation`: traduction automatique à l'aide de modèle _transformers_

`s3_anonymization`: anonymisation/pseudonymisation de données with Faker

## Module 6

`s1_extraction`: extraction de texte à partir de formats variés

`s2_fuzzy_matching`: correction d'erreurs OCR à l'aide de distances d'édition
