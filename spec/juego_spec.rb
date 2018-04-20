require './lib/juego.rb'
describe Juego do 
	it "Jugador escribe la letra S y la encuentra, muestra S----" do 
		juego=Juego.new 
		result = juego.adivina "S"
		expect(result).to eq "S----"
	end
	it "Jugador escribe las letras SU y las encuentra, muestra S--U-" do 
		juego=Juego.new 
		juego.adivina "S"
		result = juego.adivina "U"
		expect(result).to eq "S--U-"
	end
	it "Jugador escribe las letras SUX y encuentra las dos primeras, muestra S--U-" do 
		juego=Juego.new 
		juego.adivina "S"
		juego.adivina "U"
		result = juego.adivina "X"
		expect(result).to eq "S--U-"
	end
	it "Jugador escribe las letras SCRUM y las encuentra, muestra SCRUM" do 
		juego=Juego.new 
		juego.adivina "S"
		juego.adivina "C"
		juego.adivina "R"
		juego.adivina "U"
		result = juego.adivina "M"
		expect(result).to eq "SCRUM"
	end
	it "Jugador 2 veces la letra u debe buscando en SCRUM debe mustrar U y decir que u no esta desable" do 
		juego=Juego.new 
		juego.adivina "U"
		result = juego.obtenerletras
		expect(result["U"]).to eq "S"
	end
end