dados = load('grupoDados3.mat');

%Normaliza os dados
gTeste = normal(dados.grupoTest);
gTrain = normal(dados.grupoTrain);
%gTeste = dados.grupoTest;
%gTrain = dados.grupoTrain;
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

    %Verifica se a precisao e 92%
    if(precisao == 0.92)
      precisaoMax = precisao;
      kMax = k;
      break;
    end
    
  end

end

visualizaPontos(gTrain, trainRots, 1, 2);

textoFinal = sprintf('k = %i Precisao = %0.2f', kMax, precisaoMax);
disp(textoFinal);

%Grupo de Dados 3
%Q3.1. Com k = 1, precisao = 0.70.
%Q3.2.
%Precisoes obtidas com testes:
%Procurando k com a melhor precisao
%2a coluna - Sem normalizar - 0.96 (k = 35)
%
%1a coluna - Sem normalizar - 0.72 (k = 19)
%
%2 colunas - Sem normalizar - 0.94 (k = 9)
%
%2 colunas - Normalizar - 0.94 (k = 25)
%
%1a coluna - Normalizar - 0.72 (k = 17)
%
%2a coluna - Normalizar - 0.94 (k = 35)
%
%==============================================================================
%Procurando k's que possuem precisao 92%
%
%2 colunas - Normalizar - 0.92 (k = 19)
%
%1a coluna - Normalizar - Nenhum
%
%2a coluna - Normalizar - Nenhum
%
%2 colunas - Sem Normalizar - 0.92 (k = 7)
%
%1a coluna - Sem Normalizar - Nenhum
%
%2a coluna - Sem Normalizar - Nenhum