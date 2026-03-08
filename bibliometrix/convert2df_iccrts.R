# ==============================================================================
# Script para converter o Dataframe M (ICCRTS) para formato bibliometrix
# usando convert2df() - mesmo padrão usado para IEEE/SCOPUS/WoS
# ==============================================================================

# Carregar bibliotecas
library(bibliometrix)
library(dplyr)
library(stringr)
library(readxl)

# Definir diretório de trabalho
setwd("~/Projetos/TEMAC")

# ==============================================================================
# 1. CARREGAR DADOS ORIGINAIS DO EXCEL
# ==============================================================================

arquivo <- "ajustes_BD/IC2I/metadados_iccrts_v4.xlsx"

if (!file.exists(arquivo)) {
  stop(paste("Arquivo não encontrado:", arquivo))
}

# Carregar dados do Excel
df_raw <- as.data.frame(readxl::read_excel(arquivo), stringsAsFactors = FALSE)

# Verificar colunas disponíveis
cat("Colunas disponíveis no Excel:\n")
print(colnames(df_raw))

# ==============================================================================
# 2. CRIAR DATAFRAME NO FORMATO CSV QUE convert2df() ESPERA
# O formato Scopus espera as mesmas colunas do arquivo base_ieee_adaptada_scopus.csv
# Com VÍRGULA como separador (não ponto-e-vírgula!)
# ==============================================================================

df_formato_csv <- df_raw %>%
  mutate(
    # Title (Título)
    Title = ifelse(!is.na(TITLE), TITLE, ""),
    
    # Authors (Autores) - usar AUTHORS_APA, com fallback para AUTHORS
    Authors = ifelse(!is.na(AUTHORS_APA) & AUTHORS_APA != "", 
                     AUTHORS_APA, 
                     ifelse(!is.na(AUTHORS) & AUTHORS != "", AUTHORS, "")),
    
    # Affiliations (Afiliações) - não disponível, deixar vazio
    Affiliations = "",
    
    # Source title (Nome da Fonte/Conferência)
    `Source title` = ifelse(!is.na(CONFERENCE), CONFERENCE, ""),
    
    # Year (Ano de Publicação)
    Year = as.numeric(YEAR),
    
    # Abstract (Resumo)
    Abstract = ifelse(!is.na(ABSTRACT), ABSTRACT, ""),
    
    # DOI - não disponível, deixar vazio
    DOI = "",
    
    # Cited by (Citações) - 0 para conferências
    `Cited by` = 0,
    
    # Author Keywords - usar LLM_KEYWORDS (mais completa) como prioridade
    `Author Keywords` = ifelse(!is.na(LLM_KEYWORDS) & LLM_KEYWORDS != "", 
                               toupper(LLM_KEYWORDS), 
                               ifelse(!is.na(KEYWORDS) & KEYWORDS != "", 
                                      toupper(KEYWORDS), "")),
    
    # Index Keywords - usar as keywords originais
    `Index Keywords` = ifelse(!is.na(KEYWORDS) & KEYWORDS != "", 
                              toupper(KEYWORDS), ""),
    
    # Colunas adicionais que o bibliometrix espera (mesmo que vazias)
    Volume = "",
    Issue = "",
    `Page start` = "",
    `Page end` = "",
    Publisher = "",
    ISSN = "",
    Source = "ICCRTS",
    `Document Type` = "Conference Paper",
    EID = "",
    
    # References (Referências citads) - substituir | por ;
    References = ifelse(!is.na(REFERENCES), str_replace_all(REFERENCES, "\\|", ";"), "")
  ) %>%
  select(
    Title,
    Authors,
    Affiliations,
    `Source title`,
    Year,
    Abstract,
    DOI,
    `Cited by`,
    `Author Keywords`,
    `Index Keywords`,
    Volume,
    Issue,
    `Page start`,
    `Page end`,
    Publisher,
    ISSN,
    Source,
    `Document Type`,
    EID,
    References
  )

# Verificar o formato
cat("\nEstrutura do dataframe para export:\n")
str(df_formato_csv)

# ==============================================================================
# 3. EXPORTAR PARA CSV (VÍRGULA como separador, como no arquivo que funciona!)
# ==============================================================================

# Caminho para salvar o CSV temporário
csv_output <- "ajustes_BD/IC2I/iccrts_para_convert2df.csv"

# Exportar com VÍRGULA como separador (igual ao arquivo base_ieee_adaptada_scopus.csv)
write.table(df_formato_csv, 
            file = csv_output, 
            sep = ",",  # <-- VÍRGULA, não ponto-e-vírgula!
            row.names = FALSE,
            quote = TRUE,
            fileEncoding = "UTF-8")

cat("\nCSV exportado para:", csv_output, "\n")

# Verificar as primeiras linhas do CSV
cat("\nPrimeiras linhas do CSV:\n")
readLines(csv_output, n = 3) %>% head()

# ==============================================================================
# 4. USAR convert2df() PARA CONVERTER PARA FORMATO BIBLIOMETRIX
# ==============================================================================

# Converter usando dbsource = "scopus" (funciona bem com conferências)
M_iccrts_bibliometrix <- convert2df(
  file = csv_output, 
  dbsource = "scopus", 
  format = "csv"
)

cat("\nDataframe convertido com sucesso!\n")
cat("Dimensões:", nrow(M_iccrts_bibliometrix), "linhas x", ncol(M_iccrts_bibliometrix), "colunas\n")

# Verificar as colunas geradas
cat("\nColunas do dataframe bibliometrix:\n")
print(colnames(M_iccrts_bibliometrix))

# ==============================================================================
# 5. SALVAR O RESULTADO
# ==============================================================================

# Salvar como .rdata
save(M_iccrts_bibliometrix, file = "M_iccrts_bibliometrix.rdata")

cat("\nDataframe salvo em: M_iccrts_bibliometrix.rdata\n")

# ==============================================================================
# 6. TESTAR COM biblioAnalysis()
# ==============================================================================

# Testar se funciona com biblioAnalysis
resultados <- biblioAnalysis(M_iccrts_bibliometrix, sep = ";")

# Mostrar resumo
summary(resultados)

cat("\n=== SUCESSO! Dataframe ICCRTS agora está no formato bibliometrix ===\n")
