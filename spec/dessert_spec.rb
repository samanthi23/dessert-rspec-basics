require 'dessert'
require 'drink'

describe Dessert do 
    subject(:brownie) { Dessert.new("brownie", 50) }
    let(:milk) { Drink.new("milk")}
    
    
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
        
        # raises an error if amount is not a number
        it 'raises an error if the amount is not a number' do
         # in brackets and not parenthesis 
         expect { Dessert.new("brownie", "tons") }.to raise_error("Amount must be a number")
    end
    
    describe '#eat' do 
        it 'calls #dip on the accompanying drink' do 
           expect(milk).to receive(:dip).with(brownie) 
           brownie.eat(milk)
        end
    end
    end
    
    
end

