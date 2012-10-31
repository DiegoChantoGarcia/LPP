require 'rps'

describe RockPaperScissors do
	before :each do
		@rps = RockPaperScissors.new()
	end

	it "Debe existir una tirada para el humano" do
		@rps.humano.should == :piedra
	end

	it "Debe existir una tirada para la maquina" do
		@rps.computer.should == :papel
	end

	it "Debe existir una lista de tiradas validas" do
		@rps.tiradas.should == [:piedra, :papel, :tijeras]	# Geter
	end

	it "Debe existir una lista de jugadas posibles y quien gana" do
		@rps.defeat.should == {:piedra => :tijeras, :papel => :piedra, :tijeras => :papel}
	end

	it "Se debe invocar al metodo obtener_humano() para recoger la tirada del humano 
		y que esta sea valida" do
		var=@rps.obtener_humano()
		@rps.tiradas.include?var
	end

	it "Se debe invocar al metodo obtener_maquina() para recoger la tirada de la maquina 
		y que esta sea valida" do
		var=@rps.obtener_maquina()
		@rps.tiradas.include?var
	end

	it "Debe existir una lista de resultados de un juego desde el punto de vista de la maquina" do
		defined?@rps.resultados
	end

	it "Debe existir un resultado para un juego, desde el punto de vista de la maquina" do
		defined?@rpd.resultado
	end

	it "Se debe invocar al metodo jugar() para determinar el ganador de la tirada" do
		@rps.jugar
	end

	it "Se debe de comprobar que las tiradas de la maquina al ser aleatorias recorren 
		las tres posibilidades" do
		marcador = []
		40.times do
			marcador.push@rps.obtener_maquina
		end
		raise ScriptError, "No se han conseguido las 3 posibilidades '#{tiradas.join(',')}" unless marcador.length >= 3

	end

	it "Se debe comprobar que las tiradas de la maquina y del humano no son siempre la misma" do
		contador = 0
		40.times do
			if @rps.obtener_humano == @rps.obtener_maquina 
				contador += 1
			end
		end 
		raise ScriptError, "Las jugadas son iguales" unless contador < 40
	end
end
