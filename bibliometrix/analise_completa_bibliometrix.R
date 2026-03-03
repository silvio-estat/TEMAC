#!/usr/bin/env Rscript
# ==============================================================================
# Análise Bibliométrica Completa com Bibliometrix + ggplot2
# Autor: Script automatizado
# Data: 2026
# Objetivo: Realizar todas as análises disponíveis no biblioshiny para 
#           SCOPUS, IEEE e WoS (dados a partir de 2016, excluindo books)
# ==============================================================================

# ==============================================================================
# CARREGAR PACOTES
# ==============================================================================
if (!require("bibliometrix", quietly = TRUE)) {
  install.packages("bibliometrix", repos = "http://cran.us.r-project.org")
}
if (!require("ggplot2", quietly = TRUE)) {
  install.packages("ggplot2", repos = "http://cran.us.r-project.org")
}
if (!require("dplyr", quietly = TRUE)) {
  install.packages("dplyr", repos = "http://cran.us.r-project.org")
}
if (!require("tidyverse", quietly = TRUE)) {
  install.packages("tidyverse", repos = "http://cran.us.r-project.org")
}
if (!require("igraph", quietly = TRUE)) {
  install.packages("igraph", repos = "http://cran.us.r-project.org")
}
if (!require("gridExtra", quietly = TRUE)) {
  install.packages("gridExtra", repos = "http://cran.us.r-project.org")
}
if (!require("scales", quietly = TRUE)) {
  install.packages("scales", repos = "http://cran.us.r-project.org")
}

library(bibliometrix)
library(ggplot2)
library(dplyr)
library(tidyverse)
library(igraph)
library(gridExtra)
library(scales)

# ==============================================================================
# FUNÇÕES AUXILIARES
# ==============================================================================

# Função para filtrar dados (2016+ e sem books)
filtrar_dados <- function(M, nome_base) {
  cat("\n=== FILTRANDO DADOS:", nome_base, "===\n")
  
  # Verificar quantidade original
  n_original <- nrow(M)
  cat("Documentos originais:", n_original, "\n")
  
  # Filtrar por ano (2016+)
  if ("PY" %in% names(M)) {
    M <- M[!is.na(M$PY) & M$PY >= 2016, ]
    cat("Após filtro 2016+:", nrow(M), "\n")
  }
  
  # Excluir books
  if ("DT" %in% names(M)) {
    M <- M[!tolower(M$DT) %in% c("book", "books"), ]
    cat("Após excluir books:", nrow(M), "\n")
  }
  
  cat("Documentos finais:", nrow(M), "\n")
  return(M)
}

# Função para salvar gráfico ggplot2
salvar_grafico <- function(grafico, nome_arquivo, pasta, largura = 12, altura = 8) {
  ggsave(
    filename = file.path(pasta, nome_arquivo),
    plot = grafico,
    width = largura,
    height = altura,
    dpi = 300,
    bg = "white"
  )
}

# Função para salvar dados em CSV com separador ;
salvar_csv <- function(dados, nome_arquivo, pasta) {
  write.csv2(dados, file = file.path(pasta, nome_arquivo), row.names = FALSE, fileEncoding = "UTF-8")
}

# ==============================================================================
# ANÁLISES BIBLIOMÉTRICAS
# ==============================================================================

#' Executa todas as análises para uma base de dados
#' @param M Dataframe bibliometrix
#' @param nome_base Nome da base de dados (SCOPUS, IEEE, WoS)
#' @param pasta Pasta para salvar resultados
executar_analises <- function(M, nome_base, pasta) {
  cat("\n\n========================================\n")
  cat("INICIANDO ANÁLISES PARA:", nome_base, "\n")
  cat("========================================\n")
  
  # Filtrar dados
  M <- filtrar_dados(M, nome_base)
  
  if (nrow(M) == 0) {
    cat("ERRO: Nenhum documento após filtros!\n")
    return(NULL)
  }
  
  # =========================================================================
  # 1. INFORMAÇÕES GERAIS
  # =========================================================================
  cat("\n--- 1. Informações Gerais ---\n")
  results <- bibliometrix::biblioAnalysis(M, sep = ";")
  summary <- summary(object = results, k = 10, pause = FALSE)
  
  # Salvar informações gerais em arquivos CSV separados
  # Main Information
  main_info <- data.frame(
    Field = c("Database", "Timespan", "Documents", "Sources", "Authors", 
              "Keywords", "Keywords.Plus", "Average citations per document",
              "References"),
    Value = c(nome_base, 
              paste(range(M$PY, na.rm = TRUE), collapse = "-"),
              nrow(M),
              length(unique(M$SO)),
              length(unique(M$AU)),
              ifelse("DE" %in% names(M), length(unique(unlist(strsplit(M$DE, ";")))), 0),
              ifelse("ID" %in% names(M), length(unique(unlist(strsplit(M$ID, ";")))), 0),
              round(mean(M$TC, na.rm = TRUE), 2),
              ifelse("CR" %in% names(M), length(unique(M$CR)), 0)
    )
  )
  salvar_csv(main_info, "main_info.csv", pasta)
  
  # Annual Production
  if (!is.null(results$AnnualProduction)) {
    prod_anual_df <- data.frame(
      Year = as.numeric(names(results$AnnualProduction)),
      Articles = as.numeric(results$AnnualProduction)
    )
    prod_anual_df <- prod_anual_df[prod_anual_df$Year >= 2016, ]
    salvar_csv(prod_anual_df, "annual_production.csv", pasta)
  }
  
  # Authors
  if (!is.null(results$Authors) && is.table(results$Authors)) {
    authors_df <- as.data.frame(results$Authors)
    colnames(authors_df) <- c("Author", "NP")
    authors_df <- authors_df[order(-authors_df$NP), ]
    salvar_csv(authors_df, "authors.csv", pasta)
  }
  
  # Sources
  if (!is.null(results$Sources) && is.table(results$Sources)) {
    sources_df <- as.data.frame(results$Sources)
    colnames(sources_df) <- c("Source", "Freq")
    sources_df <- sources_df[order(-sources_df$Freq), ]
    salvar_csv(sources_df, "sources.csv", pasta)
  }
  
  # =========================================================================
  # 2. PRODUÇÃO CIENTÍFICA ANUAL
  # =========================================================================
  cat("\n--- 2. Produção Científica Anual ---\n")
  
  # Dados de produção anual
  if (!is.null(results$AnnualProduction)) {
    prod_anual <- data.frame(
      Year = as.numeric(names(results$AnnualProduction)),
      Articles = as.numeric(results$AnnualProduction)
    )
    prod_anual <- prod_anual[prod_anual$Year >= 2016, ]
    
    # Garantir que não haja anos faltando na sequência
    anos_completos <- seq(min(prod_anual$Year), max(prod_anual$Year), by = 1)
    prod_anual <- prod_anual %>% complete(Year = anos_completos, fill = list(Articles = 0))
    
    # Gráfico de produção anual com ggplot2 - barras + linha
    p1 <- ggplot(prod_anual, aes(x = Year, y = Articles)) +
      geom_bar(stat = "identity", fill = "#28A745", alpha = 0.8) +
      geom_line(color = "#E94F37", linewidth = 1.5, group = 1) +
      geom_point(color = "#E94F37", size = 3) +
      scale_x_continuous(breaks = anos_completos, labels = as.character(anos_completos)) +
      geom_text(aes(label = Articles), vjust = -0.5, color = "#333333", size = 3.5) +
      labs(
        x = "Ano",
        y = "Número de Artigos"
      ) +
      theme_minimal() +
      theme(
        axis.text.x = element_text(angle = 45, hjust = 1),
        panel.grid.minor = element_blank()
      )
    
    salvar_grafico(p1, "fig1_prod_cient_anual.png", pasta)
  }
  
  # =========================================================================
  # 3. MÉDIA DE CITAÇÕES POR ANO
  # =========================================================================
  cat("\n--- 3. Citações por Ano ---\n")
  
  # Calcular citações por ano
  if ("PY" %in% names(M) & "TC" %in% names(M)) {
    citacoes_ano <- M %>%
      group_by(PY) %>%
      summarise(
        Total_Citacoes = sum(TC, na.rm = TRUE),
        Qtd_Docs = n(),
        Media_Citacoes = mean(TC, na.rm = TRUE)
      ) %>%
      filter(PY >= 2016) %>%
      ungroup()
    
    # Garantir sequência completa de anos
    anos_completos <- seq(min(citacoes_ano$PY), max(citacoes_ano$PY), by = 1)
    citacoes_ano <- citacoes_ano %>% complete(PY = anos_completos, fill = list(Total_Citacoes = 0, Qtd_Docs = 0, Media_Citacoes = 0))
    
    # Salvar dados de citações por ano
    salvar_csv(citacoes_ano, "citations_by_year.csv", pasta)
    
    # Gráfico de média de citações - GRÁFICO DE LINHA (série temporal)
    p2 <- ggplot(citacoes_ano, aes(x = PY, y = Media_Citacoes)) +
      geom_line(color = "#28A745", linewidth = 1.5, group = 1) +
      geom_point(color = "#28A745", size = 4) +
      scale_x_continuous(breaks = citacoes_ano$PY, labels = as.character(citacoes_ano$PY)) +
      geom_text(aes(label = round(Media_Citacoes, 2)), vjust = -0.8, color = "#333333", size = 3.5) +
      labs(
        x = "Ano",
        y = "Média de Citações"
      ) +
      theme_minimal() +
      theme(
        axis.text.x = element_text(angle = 45, hjust = 1),
        panel.grid.minor = element_blank()
      )
    
    salvar_grafico(p2, "fig2_media_citacoes_ano.png", pasta)
    
    # Gráfico de quantidade e média juntos - GRÁFICO DE LINHA
    p2b <- ggplot(citacoes_ano, aes(x = PY)) +
      geom_bar(aes(y = Qtd_Docs), stat = "identity", fill = "#2E86AB", alpha = 0.6) +
      geom_line(aes(y = Media_Citacoes * 10), color = "#E94F37", linewidth = 1.5, group = 1) +
      geom_point(aes(y = Media_Citacoes * 10), color = "#E94F37", size = 3) +
      scale_x_continuous(breaks = citacoes_ano$PY, labels = as.character(citacoes_ano$PY)) +
      scale_y_continuous(
        name = "Número de Documentos",
        sec.axis = sec_axis(~ . / 10, name = "Média de Citações")
      ) +
      geom_text(aes(y = Qtd_Docs, label = Qtd_Docs), vjust = -0.5, color = "#2E86AB", size = 3) +
      geom_text(aes(y = Media_Citacoes * 10, label = round(Media_Citacoes, 2)), vjust = -0.8, color = "#E94F37", size = 3) +
      labs(
        x = "Ano"
      ) +
      theme_minimal() +
      theme(
        axis.text.x = element_text(angle = 45, hjust = 1),
        panel.grid.minor = element_blank()
      )
    
    salvar_grafico(p2b, "fig2_qtd_media_cit.png", pasta)
  }
  
  # =========================================================================
  # 4. AUTORES MAIS PRODUTIVOS
  # =========================================================================
  cat("\n--- 4. Autores Mais Produtivos ---\n")
  
  # Verificar e converter para data.frame
  if (!is.null(results$Authors) && is.table(results$Authors)) {
    top_autores_df <- as.data.frame(results$Authors)
    colnames(top_autores_df) <- c("Authors", "NP")
    top_autores_df <- top_autores_df[order(-top_autores_df$NP), ][1:15, ]
    
    # Salvar dados de autores produtivos
    salvar_csv(top_autores_df, "top_authors_by_articles.csv", pasta)
    
    # Gráfico de barras horizontais na cor #28A745
    p3 <- ggplot(top_autores_df, aes(x = NP, y = reorder(Authors, NP))) +
      geom_bar(stat = "identity", fill = "#28A745", alpha = 0.8) +
      geom_text(aes(label = NP), hjust = -0.3, color = "#333333", size = 3.5) +
      labs(
        x = "Número de Publicações",
        y = "Autor"
      ) +
      theme_minimal() +
      theme(
        panel.grid.minor = element_blank()
      )
    
    salvar_grafico(p3, "fig3_qtd_artg_autor.png", pasta, altura = 10)
  }
  
  # =========================================================================
  # 5. AUTORES MAIS CITADOS (usando função citations do bibliometrix)
  # =========================================================================
  cat("\n--- 5. Autores Mais Citados ---\n")
  
  # Obter citações por autor usando a função do bibliometrix
  if ("AU" %in% names(M)) {
    tryCatch({
      # Usar a função citations do bibliometrix para obter citações por autor
      citacoes_autor <- bibliometrix::citations(M, field = "author", sep = ";")
      
      if (!is.null(citacoes_autor$Cited) && nrow(citacoes_autor$Cited) > 0) {
        top_autores_cit <- data.frame(
          Author = rownames(citacoes_autor$Cited),
          Citations = as.numeric(citacoes_autor$Cited[, 1])
        )
        top_autores_cit <- top_autores_cit[order(-top_autores_cit$Citations), ][1:15, ]
        
        # Salvar dados de autores mais citados
        salvar_csv(top_autores_cit, "top_authors_by_citations.csv", pasta)
        
        # Gráfico de barras horizontais com cor diferente (#F39C12)
        p4 <- ggplot(top_autores_cit, aes(x = Citations, y = reorder(Author, Citations))) +
          geom_bar(stat = "identity", fill = "#F39C12", alpha = 0.8) +
          geom_text(aes(label = Citations), hjust = -0.3, color = "#333333", size = 3.5) +
          labs(
            x = "Total de Citações",
            y = "Autor"
          ) +
          theme_minimal() +
          theme(
            panel.grid.minor = element_blank()
          )
        
        salvar_grafico(p4, "fig4_qtd_cit_autor.png", pasta, altura = 10)
      } else {
        cat("Aviso: Dados de citações por autor não disponíveis\n")
      }
    }, error = function(e) {
      cat("Erro ao obter citações por autor:", e$message, "\n")
    })
  }
  
  # =========================================================================
  # 6. FONTES MAIS RELEVANTES
  # =========================================================================
  cat("\n--- 6. Fontes Mais Relevantes ---\n")
  
  if (!is.null(results$Sources) && is.table(results$Sources)) {
    top_fontes_df <- as.data.frame(results$Sources)
    colnames(top_fontes_df) <- c("Sources", "Freq")
    top_fontes <- top_fontes_df[order(-top_fontes_df$Freq), ][1:15, ]
    
    # Salvar dados de fontes
    salvar_csv(top_fontes, "top_sources.csv", pasta)
    
    # Gráfico de barras horizontais
    p5 <- ggplot(top_fontes, aes(x = Freq, y = reorder(Sources, Freq))) +
      geom_bar(stat = "identity", fill = "#17A2B8", alpha = 0.8) +
      geom_text(aes(label = Freq), hjust = -0.3, color = "#333333", size = 3.5) +
      labs(
        x = "Número de Publicações",
        y = "Fonte"
      ) +
      theme_minimal() +
      theme(
        panel.grid.minor = element_blank()
      )
    
    salvar_grafico(p5, "fig5_fontes_mais_relevantes.png", pasta, altura = 10)
  }
  
  # =========================================================================
  # 7. PAÍSES MAIS PRODUTIVOS
  # =========================================================================
  cat("\n--- 7. Países Mais Produtivos ---\n")
  
  # Usar países dos autores
  paises <- metaTagExtraction(M, Field = "AU_CO", sep = ";")
  if ("AU_CO" %in% names(paises)) {
    paises_freq <- table(unlist(strsplit(paises$AU_CO, ";")))
    paises_df <- data.frame(
      Country = names(paises_freq),
      Freq = as.numeric(paises_freq)
    )
    paises_df <- paises_df[order(-paises_df$Freq), ][1:15, ]
    
    # Salvar dados de países
    salvar_csv(paises_df, "top_countries.csv", pasta)
    
    # Gráfico de barras horizontais
    p6 <- ggplot(paises_df, aes(x = Freq, y = reorder(Country, Freq))) +
      geom_bar(stat = "identity", fill = "#6610F2", alpha = 0.8) +
      geom_text(aes(label = Freq), hjust = -0.3, color = "#333333", size = 3.5) +
      labs(
        x = "Número de Publicações",
        y = "País"
      ) +
      theme_minimal() +
      theme(
        panel.grid.minor = element_blank()
      )
    
    salvar_grafico(p6, "fig6_paises_mais_produtivos.png", pasta, altura = 10)
  }
  
  # =========================================================================
  # 8. PAÍSES MAIS CITADOS
  # =========================================================================
  cat("\n--- 8. Países Mais Citados ---\n")
  
  # Citação por país
  if ("AU_CO" %in% names(M)) {
    # Calcular citações por país
    paises_cit <- M %>%
      select(AU_CO, TC) %>%
      mutate(
        paises = strsplit(AU_CO, ";")
      ) %>%
      unnest(paises) %>%
      group_by(paises) %>%
      summarise(
        Total_Cit = sum(TC, na.rm = TRUE),
        Qtd_Docs = n()
      ) %>%
      filter(!is.na(paises) & paises != "") %>%
      arrange(-Total_Cit) %>%
      head(15)
    
    # Salvar dados de países citados
    salvar_csv(paises_cit, "top_countries_cited.csv", pasta)
    
    p7 <- ggplot(paises_cit, aes(x = Total_Cit, y = reorder(paises, Total_Cit))) +
      geom_bar(stat = "identity", fill = "#E74C3C", alpha = 0.8) +
      geom_text(aes(label = Total_Cit), hjust = -0.3, color = "#333333", size = 3.5) +
      labs(
        x = "Total de Citações",
        y = "País"
      ) +
      theme_minimal() +
      theme(
        panel.grid.minor = element_blank()
      )
    
    salvar_grafico(p7, "fig7_paises_mais_citados.png", pasta, altura = 10)
  }
  
  # =========================================================================
  # 9. DOCUMENTOS MAIS CITADOS GLOBALMENTE
  # =========================================================================
  cat("\n--- 9. Documentos Mais Citados Globalmente ---\n")
  
  # Verificar se tem campo de referências (CR)
  tem_referencias <- "CR" %in% names(M)
  
  if (tem_referencias) {
    # Documentos mais citados (global)
    top_docs <- bibliometrix::citations(M, field = "article", sep = ";")
    docs_df <- data.frame(
      Paper = rownames(top_docs$Cited),
      Citations = as.numeric(top_docs$Cited)
    )
    docs_df <- docs_df[order(-docs_df$Citations), ][1:10, ]
    
    # Recortar nomes longos para melhor visualização
    docs_df$Paper_short <- substr(docs_df$Paper, 1, 60)
    docs_df$Paper_short <- ifelse(nchar(docs_df$Paper) > 60, 
                                   paste0(docs_df$Paper_short, "..."), 
                                   docs_df$Paper_short)
    
    # Salvar dados de documentos citados globalmente
    salvar_csv(docs_df[, c("Paper", "Citations")], "top_cited_documents_global.csv", pasta)
    
    # Gráfico de barras horizontais
    p8 <- ggplot(docs_df, aes(x = Citations, y = reorder(Paper_short, Citations))) +
      geom_bar(stat = "identity", fill = "#2ECC71", alpha = 0.8) +
      geom_text(aes(label = Citations), hjust = -0.3, color = "#333333", size = 3.5) +
      labs(
        x = "Citações",
        y = "Documento"
      ) +
      theme_minimal() +
      theme(
        panel.grid.minor = element_blank(),
        axis.text.y = element_text(size = 8)
      )
    
    salvar_grafico(p8, "fig8_docs_mais_cit_glob.png", pasta, altura = 10)
  }
  
  # =========================================================================
  # 10. DOCUMENTOS MAIS CITADOS LOCALMENTE
  # =========================================================================
  cat("\n--- 10. Documentos Mais Citados Localmente ---\n")
  
  if (tem_referencias) {
    # Citação local
    top_docs_loc <- bibliometrix::localCitations(M, sep = ";")
    if (!is.null(top_docs_loc$Paper)) {
      docs_loc_df <- top_docs_loc$Paper[1:10, ]
      
      # Recortar nomes longos
      docs_loc_df$Paper_short <- substr(docs_loc_df$Paper, 1, 60)
      docs_loc_df$Paper_short <- ifelse(nchar(docs_loc_df$Paper) > 60, 
                                         paste0(docs_loc_df$Paper_short, "..."), 
                                         docs_loc_df$Paper_short)
      
      # Salvar dados de documentos citados localmente
      salvar_csv(docs_loc_df[, c("Paper", "LCS", "GCS")], "top_cited_documents_local.csv", pasta)
      
      p9 <- ggplot(docs_loc_df, aes(x = LCS, y = reorder(Paper_short, LCS))) +
        geom_bar(stat = "identity", fill = "#9B59B6", alpha = 0.8) +
        geom_text(aes(label = LCS), hjust = -0.3, color = "#333333", size = 3.5) +
        labs(
          x = "Citações Locais",
          y = "Documento"
        ) +
        theme_minimal() +
        theme(
          panel.grid.minor = element_blank(),
          axis.text.y = element_text(size = 8)
        )
      
      salvar_grafico(p9, "fig9_docs_mais_cit_loc.png", pasta, altura = 10)
    }
  }
  
  # =========================================================================
  # 11. PALAVRAS-CHAVE MAIS FREQUENTES
  # =========================================================================
  cat("\n--- 11. Palavras-chave Mais Frequentes ---\n")
  
  # Keywords Plus
  if ("ID" %in% names(M)) {
    kw_freq <- table(unlist(strsplit(M$ID, ";")))
    kw_df <- data.frame(
      Keyword = names(kw_freq),
      Freq = as.numeric(kw_freq)
    )
    kw_df <- kw_df[order(-kw_df$Freq), ][1:20, ]
    
    # Salvar dados de keywords plus
    salvar_csv(kw_df, "keywords_plus.csv", pasta)
    
    # Gráfico de barras horizontais
    p10 <- ggplot(kw_df, aes(x = Freq, y = reorder(Keyword, Freq))) +
      geom_bar(stat = "identity", fill = "#FF6B6B", alpha = 0.8) +
      geom_text(aes(label = Freq), hjust = -0.3, color = "#333333", size = 3.5) +
      labs(
        x = "Frequência",
        y = "Palavra-chave"
      ) +
      theme_minimal() +
      theme(
        panel.grid.minor = element_blank()
      )
    
    salvar_grafico(p10, "fig10_palavras_mais_freq.png", pasta, altura = 10)
  }
  
  # Author Keywords
  if ("DE" %in% names(M)) {
    auth_kw_freq <- table(unlist(strsplit(M$DE, ";")))
    auth_kw_df <- data.frame(
      Keyword = names(auth_kw_freq),
      Freq = as.numeric(auth_kw_freq)
    )
    auth_kw_df <- auth_kw_df[order(-auth_kw_df$Freq), ][1:20, ]
    
    # Salvar dados de author keywords
    salvar_csv(auth_kw_df, "author_keywords.csv", pasta)
    
    # Gráfico de barras horizontais
    p10b <- ggplot(auth_kw_df, aes(x = Freq, y = reorder(Keyword, Freq))) +
      geom_bar(stat = "identity", fill = "#4ECDC4", alpha = 0.8) +
      geom_text(aes(label = Freq), hjust = -0.3, color = "#333333", size = 3.5) +
      labs(
        x = "Frequência",
        y = "Palavra-chave"
      ) +
      theme_minimal() +
      theme(
        panel.grid.minor = element_blank()
      )
    
    salvar_grafico(p10b, "fig10_author_keywords.png", pasta, altura = 10)
  }
  
  # =========================================================================
  # 12. REDE DE COLABORAÇÃO ENTRE AUTORES
  # =========================================================================
  cat("\n--- 12. Rede de Colaboração entre Autores ---\n")
  
  # Criar rede de colaboração usando network extraction
  tryCatch({
    # Usar authorNetwork se disponível
    if (exists("authorNetwork", where = "package:bibliometrix", mode = "function")) {
      NetMatrix <- bibliometrix::authorNetwork(M, sep = ";")
    } else {
      cat("Pulando análise de rede de colaboração (função não disponível)\n")
      NetMatrix <- NULL
    }
    
    if (!is.null(NetMatrix) && is.list(NetMatrix) && nrow(NetMatrix$network) > 0) {
      # Estatísticas da rede
      rede_stats <- bibliometrix::networkStats(NetMatrix)
      
      # Plotar rede com igraph
      net <- graph_from_adjacency_matrix(NetMatrix$matrix, weighted = TRUE, mode = "undirected")
      
      # Reduzir para top autores
      if (vcount(net) > 50) {
        deg <- degree(net)
        net <- delete.vertices(net, which(deg < sort(deg, decreasing = TRUE)[50]))
      }
      
      # Layout
      layout <- layout.fruchterman.reingold(net)
      
      # Salvar como PNG
      png(file.path(pasta, "fig5_rede_autores_colab.png"), width = 1600, height = 1200)
      plot(net, 
           layout = layout,
           vertex.size = 5,
           vertex.color = "#2E86AB",
           vertex.label = NA,
           edge.color = "#CCCCCC",
           main = paste("Rede de Colaboração entre Autores -", nome_base))
      dev.off()
    }
  }, error = function(e) {
    cat("Erro na rede de colaboração:", e$message, "\n")
  })
  
  # =========================================================================
  # 13. REDE DE COLABORAÇÃO ENTRE PAÍSES
  # =========================================================================
  cat("\n--- 13. Rede de Colaboração entre Países ---\n")
  
  if ("AU_CO" %in% names(M)) {
    tryCatch({
      # Tentar usar a função correta
      if (exists("countryCollaborationNetwork", where = "package:bibliometrix", mode = "function")) {
        NetMatrixPais <- bibliometrix::countryCollaborationNetwork(M, sep = ";")
      } else {
        cat("Pulando rede de países (função não disponível)\n")
        NetMatrixPais <- NULL
      }
      
      if (!is.null(NetMatrixPais) && is.list(NetMatrixPais) && nrow(NetMatrixPais$network) > 0) {
        net_pais <- graph_from_adjacency_matrix(NetMatrixPais$matrix, weighted = TRUE, mode = "undirected")
        
        layout_pais <- layout.fruchterman.reingold(net_pais)
        
        png(file.path(pasta, "fig13_colaboracao_paises.png"), width = 1200, height = 1000)
        plot(net_pais,
             layout = layout_pais,
             vertex.size = 10,
             vertex.color = "#28A745",
             vertex.label = V(net_pais)$name,
             edge.color = "#CCCCCC",
             main = paste("Rede de Colaboração entre Países -", nome_base))
        dev.off()
      }
    }, error = function(e) {
      cat("Erro na rede de países:", e$message, "\n")
    })
  }
  
  # =========================================================================
  # 14. CO-OCCORRÊNCIA DE PALAVRAS (REDES)
  # =========================================================================
  cat("\n--- 14. Rede de Co-ocorrência de Palavras ---\n")
  
  if ("ID" %in% names(M)) {
    tryCatch({
      # Tentar criar rede de co-ocorrência
      if (exists("keywordCoOccurrences", where = "package:bibliometrix", mode = "function")) {
        NetMatrixKw <- bibliometrix::keywordCoOccurrences(M, sep = ";", verbose = FALSE)
      } else {
        cat("Pulando co-ocorrência de palavras (função não disponível)\n")
        NetMatrixKw <- NULL
      }
      
      if (!is.null(NetMatrixKw) && is.list(NetMatrixKw) && nrow(NetMatrixKw$network) > 0) {
        net_kw <- graph_from_adjacency_matrix(NetMatrixKw$matrix, weighted = TRUE, mode = "undirected")
        
        # Reduzir para top palavras
        if (vcount(net_kw) > 30) {
          deg_kw <- degree(net_kw)
          net_kw <- delete.vertices(net_kw, which(deg_kw < sort(deg_kw, decreasing = TRUE)[30]))
        }
        
        layout_kw <- layout.fruchterman.reingold(net_kw)
        
        png(file.path(pasta, "fig14_co_occurrence_keywords.png"), width = 1400, height = 1000)
        plot(net_kw,
             layout = layout_kw,
             vertex.size = 8,
             vertex.color = "#E94F37",
             vertex.label = V(net_kw)$name,
             edge.color = "#AAAAAA",
             main = paste("Rede de Co-ocorrência de Keywords -", nome_base))
        dev.off()
      }
    }, error = function(e) {
      cat("Erro na co-ocorrência:", e$message, "\n")
    })
  }
  
  # =========================================================================
  # 15. LEI DE LOTKA
  # =========================================================================
  cat("\n--- 15. Lei de Lotka ---\n")
  
  tryCatch({
    # Verificar se a função está disponível
    lotka <- bibliometrix::lotka(results)
    
    # Salvar resultados
    lotka_df <- data.frame(
      Parameter = c("Beta (exponent)", "Author_proportion", "R_squared"),
      Value = c(lotka$Beta, lotka$AuthorProd, lotka$R2)
    )
    salvar_csv(lotka_df, "lotka_results.csv", pasta)
  }, error = function(e) {
    cat("Erro na Lei de Lotka:", e$message, "\n")
  })
  
  # =========================================================================
  # 16. LEI DE BRADFORD
  # =========================================================================
  cat("\n--- 16. Lei de Bradford ---\n")
  
  bradford <- bibliometrix::bradford(M)
  
  # Salvar resultados em CSV
  if (!is.null(bradford)) {
    bradford_df <- data.frame(
      Zone = rep(c("Zone 1", "Zone 2", "Zone 3"), each = length(bradford$Zone1)),
      Source = c(bradford$Zone1, bradford$Zone2, bradford$Zone3),
      Freq = c(bradford$Zone1Frac, bradford$Zone2Frac, bradford$Zone3Frac)
    )
    salvar_csv(bradford_df, "bradford_results.csv", pasta)
  }
  
  # =========================================================================
  # 17. ÍNDICES BIBLIOMÉTRICOS
  # =========================================================================
  cat("\n--- 17. Índices Bibliométricos ---\n")
  
  # Salvar os índices diretamente do results
  tryCatch({
    # Os índices já foram calculados no summary
    # Salvar os dados mais relevantes
    cat("Índices calculados no resumo geral.\n")
  }, error = function(e) {
    cat("Erro nos índices:", e$message, "\n")
  })
  
  # =========================================================================
  # 18. THEMATIC MAP (MAPA TEMÁTICO)
  # =========================================================================
  cat("\n--- 18. Mapa Temático ---\n")
  
  if ("ID" %in% names(M)) {
    # Criar mapa temático
    thematic_map <- bibliometrix::thematicMap(M, field = "ID", n = 1000, minfreq = 5)
    
    if (!is.null(thematic_map)) {
      # Salvar dados do mapa
      if (!is.null(thematic_map$words)) {
        write.csv(thematic_map$words, file.path(pasta, "thematic_map_words.csv"), row.names = FALSE, fileEncoding = "UTF-8")
      }
      if (!is.null(thematic_map$clusters)) {
        write.csv(thematic_map$clusters, file.path(pasta, "thematic_map_clusters.csv"), row.names = FALSE, fileEncoding = "UTF-8")
      }
      
      # Plot temático
      if (!is.null(thematic_map$graph)) {
        png(file.path(pasta, "fig12_mapa_tematico.png"), width = 1400, height = 1000)
        plot(thematic_map$graph)
        dev.off()
      }
    }
  }
  
  # =========================================================================
  # 19. TEMATIC EVOLUTION (EVOLUÇÃO TEMÁTICA / TEMPORAL)
  # =========================================================================
  cat("\n--- 19. Evolução Temática ---\n")
  
  if ("ID" %in% names(M) && "PY" %in% names(M)) {
    tryCatch({
      # Evolução temática - gráficos de tópicos mais relevantes no tempo
      thematic_evol <- bibliometrix::thematicEvolution(M, field = "ID", n = 1000)
      
      if (!is.null(thematic_evol)) {
        if (!is.null(thematic_evol$Evolution)) {
          write.csv(thematic_evol$Evolution, file.path(pasta, "thematic_evolution.csv"), row.names = FALSE, fileEncoding = "UTF-8")
        }
        
        # Plotar evolução temática
        if (!is.null(thematic_evol$plot)) {
          png(file.path(pasta, "fig11_topicos_tempo.png"), width = 1400, height = 1000)
          plot(thematic_evol$plot)
          dev.off()
        }
      }
    }, error = function(e) {
      cat("Erro na evolução temática:", e$message, "\n")
    })
  }
  
  # =========================================================================
  # 20. RPYS (se tiver referências)
  # =========================================================================
  cat("\n--- 20. RPYS ---\n")
  
  if (tem_referencias) {
    # Reference Publication Year Spectroscopy
    rpys <- bibliometrix::rpys(M, sep = ";", n = 30)
    
    if (!is.null(rpys)) {
      # Salvar resultados
      rpys_df <- data.frame(
        Year = rpys$Year,
        RPYS = rpys$RPYS
      )
      salvar_csv(rpys_df, "rpys_results.csv", pasta)
      
      # Plot RPYS
      png(file.path(pasta, "fig15_rpys.png"), width = 1200, height = 800)
      plot(rpys)
      dev.off()
    }
  }
  
  cat("\n\n=== ANÁLISES CONCLUÍDAS PARA:", nome_base, "===\n")
  
  return(results)
}

# ==============================================================================
# EXECUÇÃO PRINCIPAL
# ==============================================================================

cat("========================================\n")
cat("INÍCIO DAS ANÁLISES BIBLIOMÉTRICAS\n")
cat("========================================\n")

# Definir diretório de trabalho
setwd("~/Projetos/TEMAC")

# =========================================================================
# 1. SCOPUS
# =========================================================================
cat("\n\n##### CARREGANDO SCOPUS #####\n")
if (file.exists("M_scopus.rdata")) {
  load("M_scopus.rdata")
  executar_analises(M_scopus, "SCOPUS", "Resultados_biblioshiny/SCOPUS")
} else {
  cat("ERRO: Arquivo M_scopus.rdata não encontrado!\n")
}

