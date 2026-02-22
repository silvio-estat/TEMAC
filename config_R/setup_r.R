# setup_r.R

# Instala o kernel de R para o Jupyter
install.packages("IRkernel", repos = "http://cran.us.r-project.org")

# Regista o kernel para que o Jupyter/VS Code o reconheça
IRkernel::installspec(user = TRUE) 

# Instala o pacote para a análise bibliométrica
install.packages("bibliometrix", repos = "http://cran.us.r-project.org")

print("Ambiente R configurado com sucesso!")