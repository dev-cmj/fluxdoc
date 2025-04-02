# Fluxdoc - Documentation Management System

## 개발 환경 시작하기

### 사전 준비물
- Docker
- Docker Compose

## 로컬 개발 환경 설정
1. `.env.example` 파일을 `.env`로 복사
2. 복사한 `.env` 파일에 실제 비밀번호 입력
3. `docker-compose up -d`로 실행

1. 프로젝트 루트 디렉토리에서 다음 명령어 실행
```bash
docker-compose up -d
```

2. 서비스 상태 확인
```bash
docker-compose ps
```

### 접속 정보
#### MySQL
- Host: localhost
- Port: 3306

#### MinIO
- Endpoint: http://localhost:9000
- Console: http://localhost:9001
#### 애플리케이션
- URL: http://localhost:8080

### 중지 및 정리
```bash
docker-compose down
```

### TODO
- [ ] MinIO에 업로드된 파일을 S3로 백업하는 기능 추가
- [ ] github-actions CI/CD 설정
- [ ] Dockerfile 최적화
- [ ] Redis 도입
- [ ] Nginx 리버스 프록시 설정
- [ ] 프론트엔드 구성