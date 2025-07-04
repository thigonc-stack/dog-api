# dog-api
# Testes Automatizados da Dog API com Robot Framework

Este projeto contém testes automatizados para validar os principais endpoints da Dog API, utilizando Robot Framework com Python.

## Endpoints Testados

- `GET /breeds/list/all` — Lista todas as raças de cães.
- `GET /breed/{breed}/images` — Retorna imagens de uma raça específica.
- `GET /breeds/image/random` — Retorna uma imagem aleatória de qualquer raça.

## Requisitos

- Python 3.7+
- pip
- Robot Framework
- RequestsLibrary

## Instalação

1. Clone este repositório:
   bash
   git clone https://github.com/thigonc-stack/dog-api
   cd dog-api-tests