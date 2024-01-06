FROM perl

WORKDIR /app

COPY . .

RUN cpanm --installdeps .

CMD ["morbo", "--listen=http://*:3001", "./src/index.pl"]
