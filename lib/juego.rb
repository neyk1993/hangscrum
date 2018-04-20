class Juego
	attr_reader :palabra_adivinada
	def initialize 
		@palabra = ["S","C","R","U","M"]
		@palabra_adivinada = ["-","-","-","-","-"]
	end
	def adivina letra
		if @palabra.to_s.include? letra
			posicion = 0
			@palabra.each do |item|
				if item.eql? letra
					@palabra_adivinada[posicion] = letra					
				end
				posicion += 1
			end

			return @palabra_adivinada.join ""
		else
			@palabra_adivinada.join ""
		end
	end
end