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
    
    [matrizOrdenada ind] = sort(matDistancia(i));
    rotuloPrevisto = dadosTrain(ind(1:k));
    retorno(i) = rotuloPrevisto;
  end
  
  disp(retorno);
  %disp(matrizOrdenada);]
  %disp(ind);
end