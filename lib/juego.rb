class Juego
	attr_reader :palabra_adivinada
	def initialize 
		@letras = {"A" =>"","B"=>"","C"=>"","D"=>"","E"=>"","F"=>"","G"=>"","H"=>"","I"=>"","J"=>"","K"=>"","L"=>"","M"=>"","N"=>"","Ñ"=>"","O"=>"","P"=>"","Q"=>"","R"=>"","S"=>"","T"=>"","U"=>"","V"=>"","W"=>"","X"=>"","Y"=>"","Z"=>""}
		@palabra = ["S","C","R","U","M"]
		@palabra_adivinada = ["-","-","-","-","-"]
	end
	def adivina letra

			posicionletra = 0
			@letras.each do |letrapermitida,estadoletra|
				if letrapermitida.eql? letra
					@letras[letra] = "S"
				end
				posicionletra +=1
			end
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

	def obtenerletras 
		return @letras
	end
end