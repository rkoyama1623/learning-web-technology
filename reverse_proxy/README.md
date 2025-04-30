# reverse-proxy

## Log in to docker container

```bash
cd reverse-proxy/docker
./setup.sh
docker compose exec html-server /bin/bash
```

`setup.sh` generate not only `.env` file but also `self-ssl.{key, cert}` in `nginx/ssl`.

## Learn reverse proxy

1. Start http server

```bash
cd ~/reverse-proxy
npm install
npm run build
npm run dev
```

2. Access http web page

   http://192.168.16.2:5173/

3. Access https web page

   https://192.168.16.3/

