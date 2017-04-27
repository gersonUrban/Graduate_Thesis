numSimulacoes = 100;
numIteracoes = 10000;
numAgentes = 50;

#Variaveis para calculos
somatorio = matrix(nrow = numAgentes, ncol = 5, 0)
media = matrix(nrow = numAgentes, ncol = 5, 0)
desvio = matrix(nrow = numAgentes, ncol = 5, 0)


#Variaveis para agentes
agente = array(0, dim=c(numAgentes,5,numSimulacoes))

#Na vdd nem preciso disto, pois posso ir salvando os dados em arquivos e depois ler td para criar 
ags = array(0, dim=c(numAgentes,5,numSimulacoes))

#Variaveis para verificação dos dias sobrevividos
diasVivos = matrix(nrow = numAgentes, ncol = numSimulacoes, 0)
somaDias = matrix(ncol = numAgentes, 0)
mediaDias = matrix(ncol = numAgentes, 0)
maxDias = matrix(ncol = numAgentes, 0)
minDias = matrix(ncol = numAgentes, 0)
#static Agente[] ag = new Agente[numAgentes];
ag = list()
length(ag) = numAgentes

#setando os agentes que desejo
ag[[1]] = new("Agente", 1, 0.5, 0.5, 0.5, 0.5, 0.5)

#gerando automatico os outros agentes
for(i in 2:numAgentes){
  ag[[i]] = new("Agente", i, 0.5, 0.5, 0.5, 0.5, 0.5)
}




