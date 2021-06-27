# FrangoDestroyer

  <div align="center">
    <img src=".github/frangodestroyer.png" width="200px" />
  </div>
  <div align="center">
    <img src="https://img.shields.io/github/languages/count/vcwild/frango-destroyer?color=%23E96418&style=flat-square" alt="languages" />
    <img src="https://img.shields.io/github/license/vcwild/frango-destroyer?color=%23E96418&style=flat-square" alt="license" />
    <img src="https://img.shields.io/github/repo-size/vcwild/frango-destroyer?color=%23E96418&style=flat-square" alt="repo size" />
  </div>

**FrangoDestroyer** is a GraphQL REST API for managing workout sessions. Created with [Phoenix](https://hexdocs.pm/phoenix/Mix.Tasks.Phx.New.html), [Ecto](https://hexdocs.pm/ecto/), and a dockerized [Postgres](https://www.postgresql.org/) database.

## Getting Started

If you want to deploy the app locally, follow the instructions below.

### Requirements

- [Mix requirements](./mix.exs)
- [Docker](https://www.docker.com/)
- [Docker compose](https://docs.docker.com/compose/)
- [Postgres database](https://hub.docker.com/_/postgres)

#### Create Docker-Compose image from Docker Hub

```sh
docker-compose up -d
```

#### Install Phoenix from Mix archive

```sh
mix archive.install hex phx_new 1.5.7
```

#### Run the server

In the project root folder, run:

```sh
mix phx.server
```

The API will be available at `https://localhost:4000`

## Features

- Create users
- Create workout plan

## Contribute

If you find any bugs or want to contribute, feel free to reach out and post an issue.

## License

Distributed under the GPL 3.0 License. See [LICENSE](/LICENSE) for more information.

