# Rust Starter Project

Este é um projeto base em Rust para iniciar novos projetos rapidamente. Inclui a configuração básica de desenvolvimento e melhores praticas para a subida do código para produção.

## Sumário

- [Instalação](#instalação)
- [Ambiente de Desenvolvimento](#ambiente-de-desenvolvimento)
  - [Sem Docker](#sem-docker)
  - [Com Docker](#com-docker)
- [Execução de Testes](#execução-de-testes)
- [Build do Projeto](#build-do-projeto)
- [Auditoria de segurança](#auditoria-de-segurança)
- [Linter (Analise de código)](#linter-analise-de-código)

## Instalação

### Pré-requisitos

- [Rust](https://www.rust-lang.org/tools/install)
- [Cargo Make](https://crates.io/crates/cargo-make/0.2.14)
- [Docker](https://docs.docker.com/get-docker/) \*opcional
- [Docker Compose](https://docs.docker.com/compose/install/) \*opcional

## Ambiente de Desenvolvimento

### Sem Docker

1 - Antes de iniciar, precisa instalar o [Rust](https://www.rust-lang.org/tools/install) e o [Cargo Make](https://crates.io/crates/cargo-make/0.2.14).

2 - Para iniciar a aplicação, basta rodar:

```bash
make dev
```

### Com Docker

1 - Antes de iniciar, precisa dar permissão para acessar o arquivo `entrypoint.sh`:

```bash
chmod +x entrypoint.sh
```

2 - Para iniciar a aplicação, basta rodar:

```bash
make dev-docker
```

## Execução de Testes

Para executar os testes automatizados do projeto, use o seguinte comando:

```sh
make test
```

## Build do Projeto

Para gerar o binário do projeto, use o seguinte comando:

```sh
make build
```

O binário será gerado em `target/debug/rust-starter-project`.

Para gerar o binário com otimização, ou seja o binario para produção, use o seguinte comando:

```sh
make build-release
```

O binário será gerado em `target/release/rust-starter-project`.

## Auditoria de segurança

Para executar a auditoria de segurança do projeto, use o seguinte comando:

```sh
make audit
```

O `cargo audit` verifica o projeto em busca de dependências com vulnerabilidades de segurança conhecidas.

## Linter (Analise de código)

Para executar o linter do projeto, use o seguinte comando:

```sh
make lint
```

É usado o rustfmt para formatar o código(`cargo make format`) e o clippy para analisar o código(`cargo make clippy`).

Não ha a necessidade de verificar usando o check(`cargo make check`), pois o clippy(`cargo make clippy`) já da suporte para isso.
