#!/bin/sh
# (wget https://languagetool.org/download/ngram-data/ngrams-en-20150817.zip -P /ngrams-download/ && cd /ngrams-tmp/ && jar -xvf /ngrams-download/ngrams-en-20150817.zip && mv /ngrams-tmp/* /ngrams/ && rm /ngrams-download/ngrams-en-20150817.zip && echo Ngram has been set up) &
java -Xms256m -Xmx512m -cp languagetool-server.jar org.languagetool.server.HTTPServer --port 10000 --public --allow-origin '*' # --languageModel /ngrams/