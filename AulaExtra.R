

# Em 2008 a taxa média de urbanização no Brasil era de 63,68%
# Escolha 3 estados de seu interesse e para cada estado determine 
#   se a média do estado é significativamente diferente da média nacional
# Considere $\alpha=0,05$ e para os estados que a média for diferente apresente um intervalo de confiança para a média do estado
#
# 


dados <- read.csv ("https://raw.githubusercontent.com/cursoRunb/Inferencia2018/master/AulaExtra/AmostraMunicipios.csv", encoding = "UTF-8")


# H0   m = 0,6368
# Ha   m >< 0,6368

taxago <-  dados[dados$ESTADOEA=='GOIAS',]
t.test(taxago$TaxadeUrbanização4, mu = 0.6368)

taxasc <-  dados[dados$ESTADOEA=='SANTA CATARINA',]
t.test(taxasc$TaxadeUrbanização4, mu = 0.6368)

tapply(dados$TaxadeUrbanização4,dados$ESTADOEA, mean)

tapply(dados$TaxadeUrbanização4,dados$ESTADOEA,t.test, mu = 0.6368)

pegapvalor <-  function(x){
  round(t.test(x,mu = 0.6368 )$p.value, 4)
}

pegapvalor(taxago$TaxadeUrbanização4)

tapply(dados$TaxadeUrbanização4,dados$ESTADOEA, pegapvalor)

tapply(vector, index, function)
