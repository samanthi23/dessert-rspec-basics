class Dessert
    attr_reader :type, :amount
    
   def initialize(type, amount)
       # set the instance variable type to type @type = type
      # @type = type
      raise 'Amount must be a number' unless amount.is_a?(Integer)
      
       @amount = amount
       @type = amount > 100 ? "giant #{type}" : type
   end
   
   def eat(drink)
       drink.dip(self)
       
   end
   
    
end