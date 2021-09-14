# Builder

## 1. 로컬 개발환경 만들기

로컬 개발환경 구성에는 docker-compose-local.yml을 사용합니다. docker-compose-local.yml은 사용자 로컬에 저장된 서비스 소스를 기반으로 동작합니다. 따라서 마이크로서비스들의 레포지토리를 로컬에 저장하고 있어야합니다. 


### 베마코 마이크로서비스를 Github에서 clone합니다.
```
git clone https://github.com/TaemVMC/Apigateway.git
git clone https://github.com/TaemVMC/Builder.git
git clone https://github.com/TaemVMC/TransactionManager.git
git clone https://github.com/TaemVMC/UserManager.git
git clone https://github.com/TaemVMC/VerificationManager.git
```


### 아래와 같은 디렉토리 구조가 갖춰집니다.
```
.
├── Apigateway
├── Builder
├── ConfigManager
├── TransactionManageer
├── UserManager
└── VerificationManager
```



### 마이크로서비스들을 빌드하고 컴포즈 환경을 시작합니다.  
```
cd ./Builder
./build.sh
docker-compose -f docker-compose-local.yml up -d
```


## 2. 레포지토리가 필요없는 개발환경 만들기

서비스 환경에 개발용도로 배포할 때는 docker-compose-development.yml을 사용합니다. 소스코드를 작업환경에 저장해놓을 필요가 없습니다.

컴포즈의 빌드 컨텍스트는 곧바로 Github 레포지토리를 바라보게 됩니다. 또한 빌드도 컨테이너 내부에서 이루어집니다.

```
cd ./Builder
docker-compose -f docker-compose-development.yml up -d
```
