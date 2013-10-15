#! /usr/bin/ruby
# Implementar en este fichero la clase para crear objetos racionales

require "./gcd.rb"

class Fraccion
	attr_reader :n, :d
	def initialize(num, den) 
		max = gcd(num, den)	
		#teniendo el maximo comun divisor operamos y los añadimos
		@n = num/max		
		@d = den/max
	end

	def to_s
		"Fraccion: #{@n} / #{@d} "
	end

	def suma(x)  #x es un objeto de la clase fraccion
		@n = @n*x.d + x.n * @d
		@d = @d * x.d
		#una vez realizada la suma la reducimos
		#a su minima expresion
		max = gcd(@n, @d)
		@n = @n / max
		@d = @d / max
	end

	def resta(x)
		@n = @n*x.d - x.n * @d
		@d = @d * x.d
		max = gcd(@n, @d)
		@n = @n / max
		@d = @d / max
	end
	
	def producto(x)
		@n = @n * x.n
		@d = @d * x.d
		max = gcd(@n, @d)
		@n = @n / max
		@d = @d / max
	end

	def division(x)
		@n = @n * x.d
		@d = @d * x.n
		max = gcd(@n, @d)
		@n = @n / max
		@d = @d / max
	end
end

