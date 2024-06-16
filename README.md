## Teste Técnico Engenheiro de dados
documentação da resolução do case de Engenharia de dados. Todo o codigo do pipeline desenvolvido está no notebook `Script_ETL` e tambem todos os outros codigos como `Dockerfile`, e scripts `SQL` para a criação das tabelas e a consulta. Abaixo vai toda a explicação implementado na `Google Cloud`.

## Linguagem e ferramentas utilizadas para o teste:
  - Python
  - Pandas, service_account, pandas_gbq
  - Docker
  - SQL 
  - BigQuery
  - Conteiner Registry
  - Cloud RUN
  - Cloud Functions

## Datawarehouse
Para o projeto estruturei um Datawarehouse chamado Projeto_GCP no BigQuery com base nos dados mencionados no case, criei a modelagem relacional dos dados e depois criei um script para criar as tabelas no `BigQuery`

![Modelo DW](https://github.com/thiagothr/Case_IPNET/assets/72639507/fde8d01d-214a-4e1c-b967-fa1afb545e0c)
![Captura de tela 2024-06-15 233029](https://github.com/thiagothr/Case_IPNET/assets/72639507/f57fd620-e9b0-47a9-9dfd-2e605ed049e0)

## Desenvolvimento do codigo
Após a estruturação do DW no Google Cloud desensenvolvi um codigo `Script_ETL` que realiza todo pipeline desde a extração, transformação até o carregamento dos dataframes ao BigQuery.
