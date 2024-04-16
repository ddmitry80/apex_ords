Oracle APEX with the Oracle 23c Free Database

Собрано по инструкции: https://pretius.com/blog/oracle-apex-docker-ords/

Инициализация контейнеров (в том числе и запуск):
```
docker-compose up
```

Или, если нужен запус как постоянного сервиса
```
docker-compose up -d
```

Остановка контейнеров:
```
docker-compose stop
```

Запуск контейнеров:
```
docker-compose start
```

Удаление контейнеров:
```
docker-compose down
```

Заходить по url: http://localhost:8023/ords/apex

Credentials

APEX Internal Workspace

User: ADMIN  
Password: OrclAPEX1999!

Everything else, e.g. ORDS_PUBLIC_USER, APEX_PUBLIC_USER, SYS, etc.

Password: E
