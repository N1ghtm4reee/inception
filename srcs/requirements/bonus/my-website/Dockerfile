FROM debian:bullseye

RUN apt-get update && \
    apt-get install -y git nginx


WORKDIR /home/website

RUN rm -rf *

RUN git clone https://github.com/codewithsadee/vcard-personal-portfolio.git

RUN cp -r vcard-personal-portfolio/* .

RUN rm -rf vcard-personal-portfolio

CMD ["nginx", "-g", "daemon off;"]