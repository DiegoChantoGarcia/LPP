require "clase_piedrapapeltijeras"
require "test/unit"

class TestJugarPiedraPapelTijeras < Test::Unit::TestCase
  
  def test_tipodatos_erroneo
    assert_raise(RuntimeError) {JugarPiedraPapelTijeras.new('cadena')}
    assert_raise(RuntimeError) {JugarPiedraPapelTijeras.new(56)}
    assert_raise(RuntimeError) {JugarPiedraPapelTijeras.new([1,2,3])}
  end
  

  
  def respuesta_correcta(x)
    return true if x =~ /There is a tie/ 
    return true if x =~ /Computer wins; (\w+) defeats (\w+)/ and JugarPiedraPapelTijeras.defeat[$1.to_sym] == $2.to_sym
    return true if x =~ /Well done. (\w+) beats (\w+)/ and JugarPiedraPapelTijeras.defeat[$1.to_sym] == $2.to_sym
  end

  def test_play
    30.times do
      assert respuesta_correcta(JugarPiedraPapelTijeras.new('piedra'))
    end
    30.times do
      assert respuesta_correcta(JugarPiedraPapelTijeras.new('papel'))
    end
    30.times do
      assert respuesta_correcta(JugarPiedraPapelTijeras.new('tijeras'))
    end
  end
  
end
