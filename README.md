# Builder

### 전체 개발환경 구성
```
docker-compose up -d --build
```


### 프로파일 변경

- local, dev, prod
```
...
    environment:
      - SPRING_PROFILES_ACTIVE=prod
...
```