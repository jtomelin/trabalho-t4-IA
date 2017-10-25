dados = load('grupoDados1.mat');
gTeste = dados.grupoTest;
gTrain = dados.grupoTrain;
testRots = dados.testRots;
trainRots = dados.trainRots;

%Resolucao k=1
k = 1;

%Carrega o vetor dos rotulos
rotuloPrevisto = meuKnn(gTrain, trainRots, gTeste, k);

estaCorreto = rotuloPrevisto == testRots;
numCorreto = sum(estaCorreto);
totalNum = length(testRots);
precisao = numCorreto / totalNum;

disp(precisao);

%Resolucao k=10
k = 10;

%Carrega o vetor dos rotulos
rotuloPrevisto = meuKnn(gTrain, trainRots, gTeste, k);

estaCorreto = rotuloPrevisto == testRots;
numCorreto = sum(estaCorreto);
totalNum = length(testRots);
precisao = numCorreto / totalNum;

disp(precisao);

visualizaPontos(gTrain, trainRots, 1, 2);


%Grupo de Dados 1
%Q1.1. Maior precisao e 98% (k = 3).
%Q1.2. Depende do caso, pois depende do grau de influencia da coluna sobre a 
%precisao, uma vez que a coluna pode causar um impacto tanto positivo, mas 
%também pode gerar impacto negativo. Para o caso atual, o valor maior pertenceu 
%ao caso de k = 3, com precisao de 98%, com todas as caracteristicas.