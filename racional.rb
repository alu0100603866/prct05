#! /usr/bin/ruby
# Implementar en este fichero la clase para crear objetos racionales

require "./gcd.rb"

class Fraccion
	def initialize(num, den) 
		@n = num
		@d = den
		@max = gcd(num, den)
		@n = @n/@max
		@d = @d/@max
	end

	def to_s
		"Fraccion: #{@n} / #{@d} maximo comun divisor #{@max} "
	end
end

fraccion = Fraccion.new(9,3)
puts fraccion
