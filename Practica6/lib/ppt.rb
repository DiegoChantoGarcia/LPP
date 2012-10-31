class RockPaperScissors

	attr_accessor :tiradas, :defeat, :humano, :computer	#Geter y Seter

	def initialize
		@tiradas = [:piedra, :papel, :tijeras]
		@defeat =  {:piedra => :tijeras, :papel => :piedra, :tijeras => :papel}
		@humano = :piedra
		@computer = :papel

		@resultados = []
		@resultado
	end

	def obtener_humano
		#tirada_humano = (ARGV.shift || '').to_sym
		@humano = @tiradas.sample
	end

	def obtener_maquina
		@computer = @tiradas.sample
	end

	def jugar
		#puts "Jugada del humano: #{@humano}"
		#puts "Jugada del PC: #{@computer}"
		if (@defeat[@computer] == @humano)
			final = "Pierde"
			@resultado="ganas"
			@resultados <<'ganas'
		elsif (@computer == @humano)
			final = "Empata"
			@resultado="empata"
			@resultados<<'empata'
		else
			final = "Gana"
			@resultado="pierde"
			@resultados <<'pierde'
		end
	end

end
