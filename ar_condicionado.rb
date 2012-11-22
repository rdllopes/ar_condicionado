module Simulacao
    
  def reduz_um_grau(temperatura, custo)
    temperatura -= 1
    custo += 0.10
    return temperatura, custo
  end
      
  def refrigera(temperatura, temp_desejada, ar_condicionado, delta, custo)
    if (temperatura >= temp_desejada + delta && !ar_condicionado)
      custo += 0.50
      ar_condicionado = true
    end

    ar_condicionado = false if (temperatura <= temp_desejada - delta && ar_condicionado)
    return temperatura, custo, ar_condicionado
  end
  
  def simula(tempo_final, temp_atual, temp_desejada, tolerancia)
    ar_condicionado = false
    temp = temp_atual
    custo = 0
    (0..tempo_final-1).each do
      temp, custo, ar_condicionado = refrigera(temp, temp_desejada, ar_condicionado, tolerancia, custo)
      temp, custo = reduz_um_grau(temp, custo) if ar_condicionado  
      temp += 0.5 unless ar_condicionado
      puts "#{temp}  #{custo}"
    end
    return temp, custo
  end
  
end