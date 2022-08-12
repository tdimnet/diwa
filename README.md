DIWA
====
__NOTE__ : This is a fork fron the [Php Diwa Project](https://github.com/snsttr/diwa). 
It initialy uses Sqlite instead of MySQL and didn't rely on Docker Compose.

---

This is just a short description. For full Documentation see [docs](docs) Directory.

## Requirements
* Docker and docker-compose
* A web browser (Firefox or Chrome are recommended)


## Manual Installation

1. Clone the repository

```
# SSH
$ git clone git@github.com:tdimnet/diwa.git

# HTTPS
$ gitclone https://github.com/tdimnet/diwa.git
```

2. Add your environment variables

```
$ cp .env.example .env

## Then update:
# Datadog Keys
DD_SITE=datadoghq.eu

## DD Dog food account
DD_API_KEY=
DD_APP_KEY=
```

2. Build the images

```
$ docker-compose build
```

3. Run your images:

```
$ docker-compose up
```

4. Browse the project

Open [localhost:8080](http://localhost:8080) and follow the installation steps to set up your MySQL
Database.


## Instrumentations

This project has been configured to be instrumented via Datadog. If you want to
learn more, check this article.

