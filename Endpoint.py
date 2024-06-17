
from google.cloud import bigquery

def Endpoint(request):
    client = bigquery.Client()
    query = """
   SELECT H.hacker_id, H.Nome, COUNT(DISTINCT S.challenge_id) AS pontuacao_maxima_desafios
    FROM `case-gcp-426020.Projeto_GCP.Hackers` AS H
    INNER JOIN `case-gcp-426020.Projeto_GCP.Submission` AS S ON H.hacker_id = S.hacker_id
    WHERE S.score = (SELECT MAX(score) FROM `case-gcp-426020.Projeto_GCP.Submission` WHERE hacker_id = H.hacker_id)
    GROUP BY H.hacker_id, H.Nome
    HAVING COUNT(DISTINCT S.challenge_id) > 1
    ORDER BY pontuacao_maxima_desafios DESC, H.hacker_id ASC;

    """
    resultado_query = client.query(query)
    resultado = resultado_query.result()
    
    #converte os resultados da consulta
    dados = [dict(linha) for linha in resultado]
    
    return str(dados)
