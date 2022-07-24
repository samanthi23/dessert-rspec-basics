require 'dessert'

describe Dessert do 
    subject(:brownie) { Dessert.new("brownie", 50) }
    
    
    describe '#initialize' do 
        it 'takes in a type' do
            expect(brownie.type).to eq('brownie')
        end
        
        it 'takes in an amount' do 
           expect(brownie.amount).to eq(50)
        end
        
        context 'with a huge amount' do 
            subject(:brownie) { Dessert.new("brownie", 100000 )} # will over-ride first subject brownie
            
            
            it 'sets the type to the giant version' do
                expect(brownie.type).to eq('giant brownie')
            end
        end
    end
    
    
end

