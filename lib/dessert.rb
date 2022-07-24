class Dessert
    attr_reader :type, :amount
    
   def initialize(type, amount)
       # set the instance variable type to type @type = type
      # @type = type
       @amount = amount
       @type = amount > 100 ? "giant #{type}" : type
   end
   
    
end