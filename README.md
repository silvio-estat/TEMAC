# Revisão da Literatura: Metodologia TEMAC - Infraestruturas de Dados e IA Operacional

Este repositório contém o pipeline de extração, tratamento e análise bibliométrica para a condução de uma Revisão Sistemática da Literatura utilizando a **Metodologia TEMAC**. 

O projeto integra a investigação e o desenvolvimento de arquiteturas de **Data Lake / Data Lakehouse**, com especial foco na sua aplicação ao domínio de **Comando e Controle**.

## 🏗️ Arquitetura do Repositório (Ambiente Híbrido)

Para garantir o melhor processamento e análise dos metadados científicos, este repositório adota uma abordagem poliglotas, separando a engenharia de dados da análise bibliométrica:

* **Python (Gestão com `uv`):** Utilizado para a leitura, limpeza e desduplicação dos ficheiros brutos exportados das bases de dados. As bibliotecas principais incluem o `pandas` e analisadores sintáticos (parsers) desenvolvidos à medida.
* **R (Jupyter Kernel):** Utilizado de forma nativa para executar o pacote `bibliometrix` (e a interface Biblioshiny), gerando as estatísticas e os grafos de mapeamento científico a partir da base consolidada.

## 📚 Bases de Dados e Consolidação

O processo de extração abrangeu três das principais plataformas de indexação científica. Devido às particularidades de cada exportação, foram desenvolvidos guiões (notebooks) específicos na pasta `/ajustes_BD/`:

1.  **IEEE Xplore (`ajustes_IEEE.ipynb`):**
    * *Formato:* `.csv`
    * *Processamento:* Concatenação em lote e remoção de publicações duplicadas utilizando as chaves `Document Title` e `DOI`.
2.  **Scopus (`ajustes_SCOPUS.ipynb`):**
    * *Formato:* `.csv`
    * *Processamento:* Empilhamento dos metadados e limpeza cruzada baseada nas colunas `Title` e `DOI`.
3.  **Web of Science - WoS (`ajustes_WoS.ipynb`):**
    * *Formato:* `.txt` (Plain Text / Tags)
    * *Processamento:* Como a WoS não utiliza o formato tabular padrão, foi construído um *parser* customizado em Python para isolar os blocos de texto por tags (como `TI`, `DI`, `UT`). A desduplicação ocorre através de dicionários iterativos, garantindo que a base final seja reescrita no formato `.txt` perfeitamente compatível com o ecossistema R.

## 🚀 Como reproduzir este ambiente

Para garantir que o isolamento das dependências em Python não interfira com os pacotes em R, siga os passos abaixo:

### Pré-requisitos
* Ter o [uv](https://github.com/astral-sh/uv) instalado.
* Ter o R instalado no sistema (`sudo apt install r-base r-base-dev` no Linux).

### Instalação

1. Clone o repositório:
   ```bash
   git clone [https://github.com/seu-usuario/temac.git](https://github.com/seu-usuario/temac.git)
   cd temac
   ```

2. Instale as dependências do Python:
    ```bash
    uv sync
    ```

3. Instale e configure o Kernel e as dependências do R:
    ```bash
    # O comando uv run garante que o R enxergue o Jupyter do ambiente virtual
        uv run Rscript config_R/setup_r.R
    ```
    <mark>essa parte demora, mas tenha fé (talvez possa dar alguns problemas também mas nada que sua IA favorita não consiga ajusar</mark>

    Aqui podem dar alguns problemas em relação a alguns programas não instalados no seu OS (no meu caso linux) que são necessários para instalar o pacote bibliometrix.

💻 Execução do Pipeline

Abra o projeto no VS Code (ou no Jupyter Lab).

Execute os ficheiros ajustes_*.ipynb na pasta /ajustes_BD/ para gerar os ficheiros consolidados (base_ieee_consolidada.csv, base_scopus_consolidada.csv e base_wos_consolidada.txt).

Abra o notebook de análise "analise_bibliometrix.ipynb" na pasta "bibliometrix", selecione o Kernel R no canto superior direito do seu editor e inicie o Biblioshiny.

Uma dica, caso o kernel não apareça, você pode procurar o URL do server do jupyter notebook com esse comando:

```bash
uv run jupyter notebook --no-browser
```