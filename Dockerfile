FROM golang:1.15

COPY src/ /

RUN git clone https://github.com/piroor/tweet.sh.git
WORKDIR tweet.sh
RUN chmod +x tweet.sh
RUN mv ./tweet.sh /usr/bin/tweet

ENTRYPOINT ["/entrypoint.sh"]