# Docker

## イメージのビルド

```bash
cd /path/to/pion-webrtc-app/docker/
echo "UID=$(id -u)" >> .env
echo "GID=$(id -g)" >> .env
echo "USER_NAME=user" >> .env
echo "PACKAGE_NAME=$(basename $(dirname $(pwd)))" >> .env
docker compose build
```

## コンテナの起動

### 運用時のコンテナ利用

#### 起動

```bash
docker compose up -d
```

#### 停止

```bash
docker compose down
```
