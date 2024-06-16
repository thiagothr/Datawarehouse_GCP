FROM jupyter/base-notebook:latest


WORKDIR /Projeto_ETL .


COPY Projeto_ETL . 


COPY requirements.txt .

# Instalando as bibliotecas no arquivo requeriments para o funcionamento
RUN pip install --no-cache-dir -r requirements.txt


RUN rm requirements.txt


# Porta do Jupyter Notebook
EXPOSE 8888


# Comando para iniciar o Jupyter Notebook
CMD ["jupyter", "notebook", "--ip='0.0.0.0'", "--port=8888", "--no-browser", "--allow-root", "--NotebookApp.token=''"]