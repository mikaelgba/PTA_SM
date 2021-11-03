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

#-------------------------------------------------------------------------------

# Dados bases

# Turma
dados_2019_turma <- "D:/Data TCC/2019/microdados_educacao_basica_2019/microdados_educacao_basica_2019/DADOS/TURMAS.CSV"

dados_2020_turma <- "D:/Data TCC/2020/microdados_censo_escolar_2020/microdados_educacao_basica_2020/DADOS/turmas.CSV"

# Escola
dados_2019_escola <- "D:/Data TCC/2019/microdados_educacao_basica_2019/microdados_educacao_basica_2019/DADOS/ESCOLAS.CSV"

dados_2020_escola  <- "D:/Data TCC/2020/microdados_censo_escolar_2020/microdados_educacao_basica_2020/DADOS/escolas.CSV"

# Matricula
dados_2019_matricula <- "D:/Data TCC/2019/microdados_educacao_basica_2019/microdados_educacao_basica_2019/DADOS/MATRICULA_NORDESTE.CSV"
  
dados_2020_matricula <- "D:/Data TCC/2020/microdados_censo_escolar_2020/microdados_educacao_basica_2020/DADOS/matricula_nordeste.CSV"

# Docente
dados_2019_docente <-"D:/Data TCC/2019/microdados_educacao_basica_2019/microdados_educacao_basica_2019/DADOS/DOCENTES_NORDESTE.CSV"

dados_2020_docente <- "D:/Data TCC/2020/microdados_censo_escolar_2020/microdados_educacao_basica_2020/DADOS/docentes_nordeste.CSV"

# Gestor
dados_2019_gestor <- "D:/Data TCC/2019/microdados_educacao_basica_2019/microdados_educacao_basica_2019/DADOS/GESTOR.CSV"
  
dados_2020_gestor  <- "D:/Data TCC/2020/microdados_censo_escolar_2020/microdados_educacao_basica_2020/DADOS/gestor.CSV"

#-------------------------------------------------------------------------------

# Função de filtragem por uma cidade especifica

filtragem = function(dado_base_entrada){
  
  dados_geral <- read.table(dado_base_entrada, header = TRUE,
                           sep = "|") 
  glimpse(dados_geral)
  
  dados_pb_guarabira <- dados_geral %>% 
    filter(CO_MUNICIPIO == 2506301)
  
  glimpse(dados_pb_guarabira)
}

#-------------------------------------------------------------------------------

# Filtragem

# Turma
dados_pb_turma_nordeste_2019 <- filtragem(dados_2019_turma)
dados_pb_turma_nordeste_2020 <- filtragem(dados_2020_turma)

# Escola
dados_pb_escola_nordeste_2019 <- filtragem(dados_2019_escola)
dados_pb_escola_nordeste_2020 <- filtragem(dados_2020_escola)

# Matricula
dados_pb_matricula_nordeste_2019 <- filtragem(dados_2019_matricula)
dados_pb_matricula_nordeste_2020 <- filtragem(dados_2020_matricula)

# Docente
dados_pb_docente_nordeste_2019 <- filtragem(dados_2019_docente)
dados_pb_docente_nordeste_2020 <- filtragem(dados_2020_docente)

# Gestor
dados_pb_gestor_nordeste_2019 <- filtragem(dados_2019_gestor)
dados_pb_gestor_nordeste_2020 <- filtragem(dados_2020_gestor)

#-------------------------------------------------------------------------------

# Geração de arquivos xlsx dos dados filtrados

# Turma 
write.xlsx(dados_pb_turma_nordeste_2019, file = "dados_pb_turma_nordeste_2019.xlsx")
write.xlsx(dados_pb_turma_nordeste_2020, file = "dados_pb_turma_nordeste_2020.xlsx")

# Escola
write.xlsx(dados_pb_escola_nordeste_2019, file = "dados_pb_escola_nordeste_2019.xlsx")
write.xlsx(dados_pb_escola_nordeste_2020, file = "dados_pb_escola_nordeste_2020.xlsx")

# Matricula
write.xlsx(dados_pb_matricula_nordeste_2019, file = "dados_pb_matricula_nordeste_2019.xlsx")
write.xlsx(dados_pb_matricula_nordeste_2020, file = "dados_pb_matricula_nordeste_2020.xlsx")

# Docente
write.xlsx(dados_pb_docente_nordeste_2019, file = "dados_pb_docente_nordeste_2019.xlsx")
write.xlsx(dados_pb_docente_nordeste_2020, file = "dados_pb_docente_nordeste_2020.xlsx")

# Gestor
write.xlsx(dados_pb_gestor_nordeste_2019, file = "dados_pb_gestor_nordeste_2019.xlsx")
write.xlsx(dados_pb_gestor_nordeste_2020, file = "dados_pb_gestor_nordeste_2020.xlsx")