FROM amazoncorretto:17-alpine
ENV VERSION 6.4
RUN wget https://languagetool.org/download/LanguageTool-$VERSION.zip && unzip LanguageTool-$VERSION.zip && rm LanguageTool-$VERSION.zip
RUN mkdir /ngrams/ /ngrams-tmp/ /ngrams-download/ && chmod -R 777 /ngrams/ /ngrams-tmp/ /ngrams-download/
WORKDIR /LanguageTool-$VERSION/
COPY languagetool.sh /
USER nobody
ENTRYPOINT ["/languagetool.sh"]