FROM denoland/deno

EXPOSE 80

WORKDIR /app

ADD . /app

RUN deno install --entrypoint main.ts

CMD ["run", "--allow-net=redis:6379", "main.ts"]