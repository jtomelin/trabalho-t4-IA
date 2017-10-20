dados = load('grupoDados1.mat');
gTeste = dados.grupoTest;
gTrain = dados.grupoTrain;
testRots = dados.testRots;
trainRots = dados.trainRots;
k = 1;
%Nao precisa normalizar esta
rotuloPrevisto = meuKnn(gTrain, trainRots, gTeste, k);

estaCorreto = rotuloPrevisto == testRots;
numCorreto = sum(estaCorreto);
totalNum = length(testRots);
precisao = numCorreto / totalNum;

disp(precisao);