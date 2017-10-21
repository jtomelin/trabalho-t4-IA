function retorno = meuKnn(dadosTrain, rotuloTrain, dadosTeste, k)
  
  linhasDadosteste = rows(dadosTeste);
  linhasDadostrain = rows(dadosTrain);
  colunasDadosteste = columns(dadosTeste);
  colunasDadostrain = columns(dadosTrain);
  matDistancia = [];
  retorno = [];
  
  for i = 1 : linhasDadosteste
    for c = 1 : linhasDadostrain
        distancia = dist(dadosTeste(i, 1:colunasDadostrain), dadosTrain(c, 1:colunasDadosteste));
        matDistancia(i, c) = distancia;
    end
    
    [matrizOrdenada ind] = sort(matDistancia(i,:));
    
    currentSpecie = [];
    
    for j = 1 : k
      currentSpecie(j) = rotuloTrain(ind(j));
    end
    
    retorno(i,1) = mode(currentSpecie);
  end
end