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

%TODO: Verificar com a professora
%for i = 1 : 4
%  visualizaPontos(gTrain, trainRots, i, i);
%end

%Grupo de Dados 1
%Q1.1. Maior precisao e 98% (k = 3).
%Q1.2. Sim, pois quanto mais informacoes sobre o objeto de estudo, maior a probabilidade de possuir uma alta precisao.