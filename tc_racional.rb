# Implementar en este fichero las Pruebas Unitarias asociadas a la clase Fraccion

require "./racional.rb"
require "test/unit"

class Test_Fraccion < Test::Unit::TestCase
  
  def test_suma
    assert_equal([2,1],Fraccion.new(1,1).suma(1,1))
    assert_equal([3,2],Fraccion.new(2,2).suma(1,2))
    assert_equal([5,6],Fraccion.new(1,3).suma(1,2))
  end
  
  def test_resta
    assert_equal([2,1],Fraccion.new(3,1).suma(1,1))
    assert_equal([1,2],Fraccion.new(4,2).suma(3,2))
    assert_equal([1,6],Fraccion.new(1,2).suma(1,3))
  end
  
  def test_multiplicar
    assert_equal([2,1],Fraccion.new(2,1).suma(1,1))
    assert_equal([12,4],Fraccion.new(4,2).suma(3,2))
    assert_equal([1,6],Fraccion.new(1,2).suma(1,3))
  end
  
  def test_dividir
    assert_equal([2,1],Fraccion.new(2,1).suma(1,1))
    assert_equal([4,9],Fraccion.new(4,6).suma(3,2))
    assert_equal([4,15],Fraccion.new(2,5).suma(3,2))
  end
end