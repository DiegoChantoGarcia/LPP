# clase_ppt.rb

class JugarPiedraPapelTijeras
  
  def initialize(jugada)
    
    @derrotado_por = {:piedra => :tijeras, :papel => :piedra, :tijeras => :papel}
    @jugadas = @derrotado_por.keys
    
    # Comprobamos que jugada sea un string, porque no existe metodo .to_sym para convertir numeros por ejemplo
    raise "Debes introducir una jugada valida: #{@jugadas.join(', ')}" unless (jugada.class == String)
    
    # Asignamos la jugada del jugador
    @jugada_jugador = jugada.to_sym
    
    # Comprobamos que la selección del jugador sea correcta
    raise "Debes introducir una jugada valida: #{@jugadas.join(', ')}" unless @jugadas.include? @jugada_jugador
    
    # Asignamos la jugada del ordenador
    @jugada_ordenador = @jugadas.sample
    
    # Comenzamos a jugar
    jugar
    
  end
  
  
  # Getter de la jugada del jugador
  def jugada_jugador
    @jugada_jugador
  end
  
  # Getter de la jugada del ordenador
  def jugada_ordenador
    @jugada_ordenador
  end

  
  def jugar()
    
    puts "Tu jugada: #{jugada_jugador}"
    puts "La jugada del ordenador: #{jugada_ordenador}"
    
    if (@derrotado_por[jugada_ordenador] == jugada_jugador)
      respuesta = "Gana el ordenador. #{jugada_ordenador.capitalize} gana a #{jugada_jugador}"
    elsif (jugada_jugador == jugada_ordenador)
      respuesta = "Ha habido un empate. Los dos han sacado #{jugada_jugador}"
    elsif
      respuesta = "Has ganado. #{jugada_jugador.capitalize} gana a #{jugada_ordenador}"
    else
      respuesta = "Ha habido un error inesperado"
    end
    
    puts "Resultado: #{respuesta}"
    
  end
  
end
