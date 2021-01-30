require_relative 'cartas'
class Baraja
    attr_accessor :cartas
    def initialize
        numeros = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13]
        pintas = ["C", "D", "P", "T"]
        @cartas = numeros.map{|n| pintas.map{|p| Cartas.new(n, p)}}.flatten
    end
    def barajar
        @cartas.shuffle! 
    end
    def sacar
        @cartas.pop        
    end
    def repartir
       mano = self.cartas.pop(5)      
    end  
end
baraja1 = Baraja.new

puts
print baraja1.barajar 
puts
print baraja1.repartir
puts