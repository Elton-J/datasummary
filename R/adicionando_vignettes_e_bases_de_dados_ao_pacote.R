library(devtools)

dados_aleatorios <- data.frame(Normal_Padrao = rnorm(n = 10),
                               Poisson_lam5 = rpois(n = 10, lambda = 5))


# Adiciona a base ao pacote
usethis::use_data(dados_aleatorios)

# Cria um vignete, um markdown para expor exemplos sobre como usar as funções
# Add a vignette called "Generating Summaries with Data Summary"
usethis::use_vignette("Gerando_Summaries_com_Data_Summary")
