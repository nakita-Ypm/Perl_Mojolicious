FROM perl

WORKDIR /app

COPY ./apps/mojolicious/cpanfile .

RUN cpanm --installdeps .

CMD ["morbo", "--listen=http://*:3001", "./src/index.pl"]
