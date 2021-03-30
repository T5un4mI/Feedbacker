# Readme

1. Create .env file with following: 
```sh
FEEDBACK_THRESHOLD=5
```
2. Run in terminal to start 
```sh
docker-compose up -d
```
3. To prepare database
```sh
docker-compose exec app bundle exec rake db:setup db:migrate
```
4. To stop services
```sh
docker-compose down
```