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
		"Fraccion: #{@n} / #{@d}"
	end

	def suma(x)  #x es un objeto de la clase fraccion
		n2 = @n*x.d + x.n * @d
		d2 = @d * x.d
		#una vez realizada la suma creamos el nuevo objeto
		Fraccion.new(n2,d2)
	end

	def resta(x)
		n2 = @n*x.d - x.n * @d
		d2 = @d * x.d
		Fraccion.new(n2,d2)
	end
	
	def producto(x)
		n2 = @n * x.n
		d2 = @d * x.d
		Fraccion.new(n2,d2)
	end

	def division(x)
		n2 = @n * x.d
		d2 = @d * x.n
		Fraccion.new(n2,d2)
	end
end

