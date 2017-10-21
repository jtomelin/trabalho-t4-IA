dados = load('grupoDados2.mat');
%gTeste = normal(dados.grupoTest);
%gTrain = normal(dados.grupoTrain);
gTeste = dados.grupoTest;
gTrain = dados.grupoTrain;
testRots = dados.testRots;
trainRots = dados.trainRots;
kMax = 1;
precisaoMax = 0;

%Resolucao k=1
k = 1;
rotuloPrevisto = meuKnn(gTrain, trainRots, gTeste, k);

estaCorreto = rotuloPrevisto == testRots;
numCorreto = sum(estaCorreto);
totalNum = length(testRots);
precisao = numCorreto / totalNum;

disp(precisao);

%Resolucao k=10
k = 10;

rotuloPrevisto = meuKnn(gTrain, trainRots, gTeste, k);

estaCorreto = rotuloPrevisto == testRots;
numCorreto = sum(estaCorreto);
totalNum = length(testRots);
precisao = numCorreto / totalNum;

disp(precisao);

%for k = 1 : rows(gTrain)
%  
%  if(rem(k, 2) != 0)
%    rotuloPrevisto = meuKnn(gTrain, trainRots, gTeste, k);
%
%    estaCorreto = rotuloPrevisto == testRots;
%    numCorreto = sum(estaCorreto);
%    totalNum = length(testRots);
%    precisao = numCorreto / totalNum;
%
%    if(precisao > precisaoMax)
%      precisaoMax = precisao;
%      kMax = k;
%    end
%    
%  end
%
%end

%t = sprintf('k = %i Precisao = %0.2f', kMax, precisaoMax);
%disp(t);

%Grupo de Dados 2
%Q2.1. Com k = 1, precisao = 0.68. Com k = 10, precisao = 0.78.
%Q2.2. Porque os dados devem ser normalizados.