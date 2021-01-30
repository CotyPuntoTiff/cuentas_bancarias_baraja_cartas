class Cartas 
    attr_accessor :numero, :pinta

    def initialize(numero, pinta)
      @numero = numero
      @pinta = pinta

      raise ArgumentError, "debes ingresar un numero del 1 al 13 " if numero > 13 || numero.class != Integer
      raise ArgumentError, "debes ingresar 'C' para corazon, 'D' para diamante, 'P' para pica o 'T' para trebol" unless pinta != 'C' || pinta != 'D' || pinta != 'P' || pinta != 'T'
       
    end
end