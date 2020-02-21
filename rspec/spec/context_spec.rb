#sempre usar _spec fim de cada arquivo

describe 'somar' do
    context 'somar dois numeros' do
     it 'POSITIVOS' do
         total = 2 + 2    
         puts total
         expect(total).to eq 4
     end
 
     it 'NEGATIVOS' do
         total = -2 +(-2)  
         puts total
         expect(total).to eq -4
     end
    end 
 end