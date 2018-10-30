

tempbsb <-  read.csv("https://raw.githubusercontent.com/cursoRunb/Inferencia2018/master/AulaFinal/climaBsb.csv")

tempgyn <-  read.csv("https://raw.githubusercontent.com/cursoRunb/Inferencia2018/master/AulaFinal/climaGyn.csv")

#
# H0 Goiana é mais quente que Brasilia ubsb <= ugyn
# Ha Goiana é mais fria que Goiana    ubsb > ugyn
#
#

tempbsb

tempmediabsb <- tempbsb[tempbsb$temp_inst]

t.test(tempbsb$temp_inst, mu = 24)
t.test(tempgyn$temp_inst, mu = 24)

tempmediabsb <- tempbsb$temp_inst    
tempmediagyn <- tempgyn$temp_inst


t.test(tempmediabsb,tempmediagyn,alternative = "less",mu=0,paired = FALSE, var.equal = FALSE)

clima <-  read.table('https://raw.githubusercontent.com/cursoRunb/Inferencia2018/master/AulaFinal/climaCidades.txt', header = TRUE, sep = ';')


mediabsb <- mean(clima$temp_inst)
mediagyn <- mean(clima$temp_inst._gyn)

#
#  H0 ubsb > ugyn
#  Ha ubsb <= ugyn

t.test(clima$temp_inst,clima$temp_inst._gyn,alternative = "less",mu=0,paired = FALSE, var.equal = FALSE)





