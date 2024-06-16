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
Após a estruturação do DW no Google Cloud desensenvolvi um codigo `Script_ETL` que realiza todo pipeline desde a extração, transformação até o carregamento dos dataframes ao BigQuery, criando um ambiente no docker para testar o codigo. 
Depois de criar a imagem no docker e testado fiz o deploy da imagem para o `Conteiner Registry` do google cloud para ser armazenado e disponibilzar para a equipe e usei `Cloud Run` para executar a imagem salva no `GCR` executando todo o script
e realizando o carregamento dos dataframes para as tabelas no `BigQuery`.

![Captura de tela 2024-06-16 012530](https://github.com/thiagothr/Case_IPNET/assets/72639507/909cef42-2d83-4854-a487-a9542c1025e2)

## Consulta SQL
Com os dados carregados nas tabelas realizei a consulta que foi solicitada no case
![Captura de tela 2024-06-16 015811](https://github.com/thiagothr/Case_IPNET/assets/72639507/24641c09-beb5-4ecd-a5c0-0a1113c563bd)
