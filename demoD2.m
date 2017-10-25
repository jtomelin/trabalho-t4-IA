dados = load('grupoDados2.mat');

%Normaliza os dados
gTeste = normal(dados.grupoTest);
gTrain = normal(dados.grupoTrain);
testRots = dados.testRots;
trainRots = dados.trainRots;

%Variaveis da melhor precisao
kMax = 1;
precisaoMax = 0;

for k = 1 : rows(gTrain)
  
  %Verifica se o k e impar
  if(rem(k, 2) != 0)
  
    %Carrega o vetor dos rotulos
    rotuloPrevisto = meuKnn(gTrain, trainRots, gTeste, k);

    estaCorreto = rotuloPrevisto == testRots;
    numCorreto = sum(estaCorreto);
    totalNum = length(testRots);
    precisao = numCorreto / totalNum;

    %Atualiza a melhor precisao
    if(precisao > precisaoMax)
      precisaoMax = precisao;
      kMax = k;
    end
    
  end

end

visualizaPontos(gTrain, trainRots, 1, 2);

textoFinal = sprintf('k = %i Precisao = %0.2f', kMax, precisaoMax);
disp(textoFinal);

%Grupo de Dados 2
%Q2.1. Com k = 1, precisao = 0.68. (Com os dados não normalizados).
%Q2.2. Porque os dados devem ser normalizados.  Com os dados normalizados,
%      k = 1, precisao = 0.98.