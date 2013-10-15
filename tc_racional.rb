#! /usr/bin/ruby
# Implementar en este fichero las Pruebas Unitarias asociadas a la clase Fraccion

require "./racional.rb"
require "test/unit"

class Test_Fraccion < Test::Unit::TestCase
	def test_suma
		@p1 = Fraccion.new(3,4)
		@p2 = Fraccion.new(7,8)
		@p1.suma(@p2)
		@psuma = Fraccion.new(13,8)
		#comprobamos que la suma sea igual al resultado
		#que obtenemos operando en papel
		assert_not_same(@p1,@psuma)
	end

	def test_resta
		@p1 = Fraccion.new(13, 8)
		@p2 = Fraccion.new(7,8)
		@p1.resta(@p2)
		@presta = Fraccion.new(3,4)
		assert_not_same(@p1, @presta)
	end

	def test_producto
		@p1 = Fraccion.new(3, 8)
                @p2 = Fraccion.new(5,2)
                @p1.producto(@p2)
                @pprod = Fraccion.new(15,16)
		assert_not_same(@p1, @pprod)
	end

	def test_division
		@p1 = Fraccion.new(3, 5)
                @p2 = Fraccion.new(4,2)
                @p1.division(@p2)
                @pdiv = Fraccion.new(6,20)
		assert_not_same(@p1, @pdiv)
	end

end
