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
    
    countSpecie1 = 0;
    countSpecie2 = 0;
    countSpecie3 = 0;
    
    for j = 1 : k
      currentSpecie = rotuloTrain(ind(j));
      switch currentSpecie
        case 1
          countSpecie1 = countSpecie1 + 1;
        case 2
          countSpecie2 = countSpecie2 + 1;
        case 3
          countSpecie3 = countSpecie3 + 1;
      end
    end
    
    if (countSpecie1 > countSpecie2 && countSpecie1 > countSpecie3)
      retorno(i) = 1;
    elseif (countSpecie2 > countSpecie1 && countSpecie2 > countSpecie3)
      retorno(i) = 2;
    else
      retorno(i) = 3;
    end
  end
end