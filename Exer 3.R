

clima <-  read.table("https://raw.githubusercontent.com/cursoRunb/Inferencia2018/master/Aula3/climaBsb.csv", sep=",",head = TRUE)


media  <-  mean(clima$temp_inst) ## Para data frame usa $ para variavel
media
variancia <- var(clima$temp_inst)
variancia

tobs <-  (media-27)/sqrt(variancia/50) ## 27 é o H0 50 é o número de observações
tobs

pt(tobs,49) ## pt é a probabilidade 49 é grau de liberdade que é tamanho - 1
pvalor

t.test(clima$temp_inst, mu = 27, alternative = "less")  ## Ha é menor que 27
