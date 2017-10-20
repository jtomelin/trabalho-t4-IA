dados = load('grupoDados1.mat');
gTeste = dados.grupoTest;
gTrain = dados.grupoTrain;
testRots = dados.testRots;
trainRots = dados.trainRots;
k = 1;
%Nao precisa normalziar esta
rotuloPrevisto = meuKnn(gTrain, trainRots, gTeste, k);
