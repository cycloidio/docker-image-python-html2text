FROM python:3.6.8-alpine3.9

ARG H2T_COMMIT_HASH
RUN wget -O /usr/bin/html2text https://raw.githubusercontent.com/aaronsw/html2text/$H2T_COMMIT_HASH/html2text.py \
    && chmod +x /usr/bin/html2text

ENTRYPOINT ["html2text"]
