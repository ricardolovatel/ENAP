
## Exercício V do https://github.com/cursoRunb/Inferencia2018/blob/master/Aula2/laboratorioTestes.pdf


tempo <-  c(1.7,1.5,2.6,2.2,2.4,2.3,2.6,3,1.4,2.3)
media  <-  mean(tempo)
variancia <- var(tempo)
tobs <-  (media-2)/sqrt(variancia/10)
tobs
pvalor = 2*(1-pt(tobs,9))
pvalor
t.test(tempo, mu = 2, alternative = "two.sided") 