# Drupal in Docker

A simple set of files to help develop a Drupal site locally in Docker containers.

Uses [Docker](https://www.docker.com/), [Docker Compose](https://docs.docker.com/compose/) and [Traefik](https://github.com/traefik/traefik).

We use Traefik to provide nice local URLS for development like mysite.localhost, but this isn't necessary. If you have trouble with it, you can remove it and run the site using just localhost:{port} as usual for Docker containers.

## To get started

1. [Install Docker](https://docs.docker.com/get-docker/)
2. [Install Docker Compose](https://docs.docker.com/compose/install/) if you didn't get it with Docker
3. Create a network for Traefik:

    `docker network create traefik`
4. Start the Traefik container:

    `cd traefik; docker compose up -d`
5. Run these containers:

    `cd ..; docker compose up -d`

## Development

To execute code inside a container:

`docker exec -ti CONTAINERID bash`

Use the MariaDB container (db) if you want to run MySQL commands, and the PHP container (php) for everything else. 

You can customise the resources the PHP container will use using the drupal.ini file. Make sure to recreate the containers if you do.

## Creators

This project was created by Dane Rossenrode at [Touchdreams](https://touchdreams.co.uk).