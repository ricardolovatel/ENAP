lista.de.pacotes = c("tidyverse","lubridate","janitor",
                     "readxl","stringr","repmis","janitor",
                     "survey","srvyr") # escreva a lista de pacotes
novos.pacotes <- lista.de.pacotes[!(lista.de.pacotes %in%
                                      installed.packages()[,"Package"])]
if(length(novos.pacotes) > 0) {install.packages(novos.pacotes)}
lapply(lista.de.pacotes, require, character.only=T)
rm(lista.de.pacotes,novos.pacotes)
gc()


# Carregando dados
data(api)


# Olhando apisrs
View(apisrs)

# amostra aleatória simples ( simple random sample)
teste <- apisrs %>% 
  as_survey(fpc = fpc)


srs_design_srvyr <- srs_design_srvyr %>%
  mutate(nivel=case_when(
    stype=="E"~"Fundamental",
    stype=="M"~"Fundamental",
    stype=="H"~"Médio"
  ))

resolucao <- srs_design_srvyr %>%
  group_by(nivel) %>%
  summarize(proporcao = survey_mean(vartype = "cv"),
            n=survey_total(vartype = "ci"))

##ggplot
srs_design_srvyr %>%
  data.frame() %>%
  ggplot() + 
  geom_point(aes(x=api99,
                 y=api00, 
                 color =nivel))


srs_design_srvyr %>%
  data.frame() %>%
  ggplot(aes(x=api99,
             y=api00, 
             color =nivel,
             shape=stype)) + 
  geom_point() +
  geom_smooth(method = "loess", se = F)
  scale_color_manual(values = c("#ff0000","aquamarine4")) +
  scale_x_continuous(limits = c(0,1))





