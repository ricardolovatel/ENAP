

clima <-  read.table("https://raw.githubusercontent.com/cursoRunb/Inferencia2018/master/Aula3/climaBsb.csv", sep=",",head = TRUE)


media  <-  mean(clima$temp_inst) ## Para data frame usa $ para variavel
media
variancia <- var(clima$temp_inst)
variancia

tobs <-  (media-27)/sqrt(variancia/50) ## 27 � o H0 50 � o n�mero de observa��es
tobs

pt(tobs,49) ## pt � a probabilidade 49 � grau de liberdade que � tamanho - 1
pvalor

t.test(clima$temp_inst, mu = 27, alternative = "less")  ## Ha � menor que 27
