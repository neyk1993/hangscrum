require './lib/juego.rb'
describe Juego do 
	it "jugardor escribe a y la entra muestra _a_a" do 
		juego=Juego.new 
		result = juego.adivina "a"
		expect(result).to eq "_a_a"
	end
end

#"jugardor escribe c y la entra muestra ca_a"
#"jugador escribe x y no la encuentra en casa muestra ca_a"
#"jugador escibre s y la encuentra muestra muestra casa"
