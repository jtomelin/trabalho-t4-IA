dados = load('grupoDados1.mat');
gTeste = dados.grupoTest;
gTrain = dados.grupoTrain;
testRots = dados.testRots;
trainRots = dados.trainRots;
k = 3;
%Nao precisa normalziar esta
rotuloPrevisto = meuKnn(gTrain, trainRots, gTeste, k);

estaCorreto = rotuloPrevisto == testRots;
%disp(estaCorreto);
numCorreto = sum(estaCorreto);
%disp(numCorreto);
totalNum = length(testRots);
precisao = numCorreto / totalNum;
disp(precisao);