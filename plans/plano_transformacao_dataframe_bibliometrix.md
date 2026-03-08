# Plano: Transformar Dataframe M para Formato Bibliometrix

## Problema Identificado

O dataframe `M` criado manualmente no código [`tentativa_ajuste_base_iccrts.ipynb`](bibliometrix/tentativa_ajuste_base_iccrts.ipynb:34) está faltando várias colunas essenciais que o bibliometrix espera para funcionar corretamente com `biblioAnalysis()`.

### Colunas Atuais no M (10 colunas)

| Coluna | Descrição |
|--------|-----------|
| TI | Título |
| AU | Autores |
| PY | Ano de Publicação |
| SO | Nome da Fonte/Conferência |
| AB | Resumo |
| DE | Palavras-chave dos Autores |
| CR | Referências Citadas |
| DT | Tipo de Documento |
| TC | Total de Citações |
| DB | Identificador da Base de Dados |

### Colunas Esperadas pelo Bibliometrix (50+ colunas)

O dataframe gerado por `convert2df()` possui dezenas de colunas, incluindo:

| Coluna Essencial | Descrição |
|-----------------|-----------|
| **AU** | Autores |
| **AF** | Autores (Affiliations) |
| **TI** | Título |
| **PY** | Ano |
| **SO** | Fonte/Journal |
| **AB** | Resumo |
| **DE** | Palavras-chave (Author Keywords) |
| **ID** | Keywords Plus/Index Keywords |
| **KW_Merged** | Keywords mescladas |
| **C1** | Afiliações |
| **CR** | Referências Citadas |
| **SR** | Short Reference (identificador único) |
| **SR_FULL** | Full Short Reference |
| **TC** | Total de Citações |
| **DI** | DOI |
| **URL** | URL do artigo |
| **DT** | Tipo de Documento |
| **DB** | Fonte da Base de Dados |
| **LA** | Idioma |
| **JI** | ISO Journal Abbreviation |
| **VL** | Volume |
| **IS** | Issue |
| **Page.start** | Página Inicial |
| **Page.end** | Página Final |

---

## Solução: Opções para Transformar o M

### Opção 1: Exportar M para CSV e Usar convert2df() (Recomendado)

Esta é a abordagem mais simples e segue o mesmo padrão usado para IEEE/SCOPUS/WoS:

1. **Exportar o dataframe M para CSV** com colunas no formato que o `convert2df()` reconhece
2. **Usar a função `convert2df()`** para converter o CSV no formato bibliometrix
3. **Salvar o resultado** como `.rdata`

**Vantagens:**
- Segue o mesmo workflow dos outros dataframes
- Gera todas as colunas automaticamente
- Compatível com todas as funções do bibliometrix

### Opção 2: Adicionar Colunas Faltantes Manualmente

Adicionar as colunas que faltam ao dataframe M existente:

**Colunas mínimas necessárias:**
- AF (Afiliações) - pode estar vazio ou extrair do Authors
- C1 (Affiliations formatadas)
- ID (Index Keywords)
- KW_Merged (Keywords mescladas)
- DI (DOI) - pode estar vazio
- URL - pode estar vazio
- LA (Idioma) - default "ENGLISH"
- JI (Journal ISO Abbreviation)
- VL, IS (Volume, Issue) - pode estar vazio
- SR_FULL (Full Short Reference)
- UT (Unique Identifier)
- RP (Corresponding Author)

---

## Plano de Execução - Opção 1 (Recomendada)

### Passo 1: Exportar M para CSV com formato adequado

Criar um CSV a partir do dataframe M com as colunas que o `convert2df()` espera:

```r
# No código R existente, adicionar após criar M:
write.table(M, "M_iccrts_temp.csv", sep = ";", row.names = FALSE)
```

### Passo 2: Criar arquivo CSV no formato do convert2df

O arquivo CSV precisa ter colunas como:
- Title
- Authors  
- Affiliations
- Source title
- Year
- Abstract
- DOI
- Cited by
- Author Keywords
- Index Keywords
- Document Type
- References

### Passo 3: Usar convert2df()

```r
M_iccrts_bibliometrix <- convert2df("M_iccrts_formatado.csv", 
                                      dbsource = "scopus", 
                                      format = "csv")
```

### Passo 4: Salvar e testar

```r
save(M_iccrts_bibliometrix, file = "M_iccrts_bibliometrix.rdata")
resultados <- biblioAnalysis(M_iccrts_bibliometrix, sep = ";")
summary(resultados)
```

---

## Arquivos de Referência

Para entender melhor o formato esperado, veja:
- [`M_scopus_rstudio.csv`](M_scopus_rstudio.csv) - Exemplo de CSV exportado do bibliometrix
- [`base_ieee_adaptada_scopus.csv`](ajustes_BD/SCOPUS_IEEE_WOS/base_ieee_adaptada_scopus.csv) - Exemplo de CSV de entrada
- [`analise_bibliometrix.ipynb`](bibliometrix/analise_bibliometrix.ipynb:133) - Código de conversão usado

---

## Próximos Passos

1. [ ] **Confirmar** qual opção o usuário prefere (Opção 1 ou 2)
2. [ ] **Executar** a transformação no código R
3. [ ] **Testar** com `biblioAnalysis()` para verificar se funciona
4. [ ] **Salvar** o dataframe final em `.rdata`

---

## Diagrama de Fluxo

```mermaid
graph TD
    A[Dataframe M atual<br/>10 colunas] --> B{Qual solução<br/>preferir?}
    
    B -->|Opção 1| C[Exportar para CSV]
    B -->|Opção 2| D[Adicionar colunas<br/>manualmente]
    
    C --> E[Usar convert2df()]
    D --> F[Completar colunas<br/>faltantes]
    
    E --> G[Dataframe bibliometrix<br/>50+ colunas]
    F --> G
    
    G --> H[Testar biblioAnalysis()]
    H --> I[Salvar .rdata]
```
