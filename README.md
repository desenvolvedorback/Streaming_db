# Projeto de Banco de Dados - Sistema de Streaming 🎬

Este projeto consiste em um modelo relacional simples em **MySQL** para gerenciar os dados de uma plataforma de streaming, incluindo informações sobre os **planos de assinatura** disponíveis e os **assinantes** cadastrados.

---

## 🗂️ Estrutura do Banco de Dados

O banco de dados `streaming_db` é composto por duas tabelas principais:

### 1. `planos`
Armazena os tipos de assinatura oferecidos pela plataforma.
* `id` (INT, PK): Identificador único do plano.
* `nome` (VARCHAR): Nome do plano (ex: Básico, Padrão, Premium).
* `valor_mensal` (DECIMAL): Custo mensal do plano.
* `qualidade` (VARCHAR): Qualidade máxima de transmissão (HD, Full HD, 4K).
* `telas` (INT): Número máximo de telas simultâneas permitidas.

### 2. `assinantes`
Armazena os dados dos usuários que assinaram a plataforma.
* `id` (INT, PK): Identificador único do assinante.
* `id_plano` (INT, FK): Referência ao plano escolhido pelo usuário.
* `nome` (VARCHAR): Nome completo do assinante.
* `email` (VARCHAR): E-mail de cadastro (único).
* `data_assinatura` (DATE): Data em que a assinatura foi realizada.
* `horas_assistidas` (INT): Média ou total de horas assistidas na plataforma.

---

## 🚀 Como Executar o Projeto

Para testar e rodar os scripts em seu ambiente local (utilizando MySQL Workbench, DBeaver ou linha de comando), execute os arquivos na seguinte ordem:

1. **Criação do Banco e Tabelas:**
   Abra e execute o script contido em `Criação do Banco de Dados do Streaming.sql`.
   
2. **Inserção de Dados (DML):**
   Execute o script `DML Streaming.sql` para popular as tabelas com dados de exemplo (planos e assinantes).

3. **Consultas (DQL):**
   Utilize o arquivo `DQL Streaming.sql` para testar consultas, filtros, agregações (`SUM`, `AVG`, `COUNT`) e junções (`JOIN`) entre as tabelas.

---

## 🔍 Exemplos de Consultas (`DQL`)

O projeto inclui consultas úteis para a gestão do negócio, como:
* **Cálculo da Receita Mensal Total:** Soma o valor de todos os planos ativos dos assinantes.
* **Média de Horas Assistidas por Plano:** Agrupa o consumo médio de conteúdo por tipo de plano para assinantes cadastrados a partir de uma data específica.
* **Filtros por Atributo:** Busca assinantes de planos específicos ou com restrições de telas.
