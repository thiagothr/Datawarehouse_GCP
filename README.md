## Desenvolvimento de Pipeline de dados e carregando no BigQuery do Google Cloud.


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
Para o projeto estruturei um Datawarehouse chamado Projeto_GCP no BigQuery com base nos dados mencionados no case, criei a modelagem relacional dos dados e depois criei o script `Script_BigQuery.sql` para criar as tabelas no `BigQuery`

![Modelo DW](https://github.com/thiagothr/Case_IPNET/assets/72639507/fde8d01d-214a-4e1c-b967-fa1afb545e0c)
![Captura de tela 2024-06-15 233029](https://github.com/thiagothr/Case_IPNET/assets/72639507/f57fd620-e9b0-47a9-9dfd-2e605ed049e0)

## Desenvolvimento do codigo
Após a estruturação do DW no Google Cloud desensenvolvi um codigo `Script_ETL` que realiza todo pipeline desde a extração, transformação até o carregamento dos dataframes ao BigQuery, criando um ambiente no docker para testar o codigo. 

## Deploy Conteiner Registry e Cloud RUN
Depois de criar a imagem no docker e testado, fiz o deploy da imagem docker para o `Conteiner Registry` do google cloud usando o `Google Cloud SDK Shell` para autenticação de ambiente entre a maquina local e a nuvem GCP e realizando o push da imagem docker para ser armazenado no `conteiner registry`  disponibilzando a imagem para a equipe e usei `Cloud RUN` para executar a imagem salva no `GCR` executando todo o script e realizando o carregamento dos dataframes para as tabelas no `BigQuery`.

#### Subindo a imagem do docker para o `conteiner registry` com o comando `docker push gcr.io`:
![Captura de tela 2024-06-18 102153](https://github.com/thiagothr/Case_IPNET/assets/72639507/eee986d5-5837-4ae8-abdd-584981217f02)

#### Imagem docker carregada no `conteiner registry`
![image](https://github.com/thiagothr/Case_IPNET/assets/72639507/ad0c88d6-6815-4a07-9851-e38f78a64b71)


#### Criação do serviço para executar a imagem docker no `Cloud RUN`
![Captura de tela 2024-06-18 103236](https://github.com/thiagothr/Case_IPNET/assets/72639507/dd4f5025-a8d3-4baf-8b13-e07b8a5526eb)

#### Execução do `Pipeline` e carregamento dos Dataframes para o `BigQuery`
![Captura de tela 2024-06-16 012530](https://github.com/thiagothr/Case_IPNET/assets/72639507/909cef42-2d83-4854-a487-a9542c1025e2)


## Consulta SQL
Com os dados carregados nas tabelas realizei a consulta que foi solicitada no case

![Captura de tela 2024-06-16 015811](https://github.com/thiagothr/Case_IPNET/assets/72639507/24641c09-beb5-4ecd-a5c0-0a1113c563bd)

## Endopoint
E para finalizar utilizei o `Cloud Functions` para criar uma função que me retorna um endpoint dos dados da consulta no BigQuery. A função se encontra no `Enpoint.py`

![Captura de tela 2024-06-16 021458](https://github.com/thiagothr/Case_IPNET/assets/72639507/eddbcfe4-66cf-4090-9b27-72fb1558f10d)

`Link Endpoint:` https://us-central1-case-gcp-426020.cloudfunctions.net/Endpoint_Analitico

e utilizei o `Postman` para a requisição da API
![Captura de tela 2024-06-18 100702](https://github.com/thiagothr/Case_IPNET/assets/72639507/ab2a596b-79a0-4ad1-aaef-f1e3ab1162d8)




