# Nape UFBA

[![Build Status](https://travis-ci.org/nape-ufba/nape-ufba.svg?branch=master)](https://travis-ci.org/nape-ufba/nape-ufba)
[![Code Climate](https://codeclimate.com/github/nape-ufba/nape-ufba/badges/gpa.svg)](https://codeclimate.com/github/nape-ufba/nape-ufba)

Trata-se de um sistema de gerenciamento de demandas de alunos com necessidades educacionais especiais através de tickets. A aplicação é feita em Rails e fornece tanto uma interface para os usuários quanto para os funcionários do NAPE.

## Como executar

### 1. Criando arquivo .env
Na primeira etapa você precisa criar um arquivo `.env` seguindo o modelo fornecido em `.env.example` que consiste em basicamente fornecer uma `DATABASE_URL`:

```
# No arquivo .env 
DATABASE_URL=
```
É importante notar que a aplicação está configurada para usar MYSql em ambiente de desenvolvimento.

### 2. Executando os arquivos de "migration"
Execute no terminal o seguinte comando:

```
rails db:migrate
```

### 3. Executando a aplicação
Use o comando `rails server` para rodar a aplicação e seja feliz. :)