function retorno = meuKnn(dadosTrain, rotuloTrain, dadosTeste, k)
  
  limitDadosteste = size(dadosTeste);
  limitDadostrain = size(dadosTrain);
  matDistancia = [];
  retorno = [];
  
  for i = 1 :limitDadosteste(1)
    for c = 1: limitDadostrain(1)
        distancia = dist(dadosTeste(i, 1:4), dadosTrain(c, 1:4));
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