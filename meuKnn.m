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
    
    [matrizOrdenada ind] = sort(matDistancia(:, 1:c));
    %rotuloPrevisto = dadosTrain(ind(1:k));
    rotuloPrevisto = rotuloTrain(ind(1));
    retorno(i) = rotuloPrevisto;
 %   disp(matrizOrdenada);
    
  end
  
  %disp(retorno);
  %disp(matrizOrdenada);]
  %disp(ind);
end