library(tidyverse)
library(here)
library(lubridate)
library(readr)
library(sf)

# install.packages("xlsx")
library(xlsx)
library(dplyr)
install.packages("openxlsx")
library(openxlsx)

dados_2019 <- read.table("D:/Data TCC/2019/microdados_educacao_basica_2019/microdados_educacao_basica_2019/DADOS/MATRICULA_NORDESTE.CSV", header = TRUE,
                    sep = "|")

glimpse(dados_2019)

dados_pb_guarabira_2019 <- dados_2019 %>% 
  filter(CO_MUNICIPIO == 2506301)

glimpse(dados_pb_guarabira_2019)

dados_2020 <- read.table("D:/Data TCC/2020/microdados_censo_escolar_2020/microdados_educacao_basica_2020/DADOS/matricula_nordeste.CSV", header = TRUE,
                         sep = "|") 

glimpse(dados_2020)

dados_pb_guarabira_2020 <- dados_2019 %>% 
  filter(CO_MUNICIPIO == 2506301)

glimpse(dados_pb_guarabira_2020)

write.xlsx(dados_pb_guarabira_2019, file = "dados_pb_maticula_nordeste_2019.xlsx")

write.xlsx(dados_pb_guarabira_2020, file = "dados_pb_maticula_nordeste_2020.xlsx")
