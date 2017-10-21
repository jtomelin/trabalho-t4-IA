function retorno = normal(dados)
    
  for i = 1 : columns(dados)
    retorno(:,i) = (dados(:,i) - min(dados(:,i))) / (max(dados(:,i)) - min(dados(:,i)));
  end
  
end