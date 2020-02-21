describe 'usando around' do

    around(:each) do |testes|

        #mesmo q before
        puts 'executando comandos antes dos testes'
        
        testes.run    

        #mesmo q after
        puts 'executando comandos dps dos testes'
    end

    it 'teste padrao' do
        total = 5 + 5
        expect(total).to eq 10
        puts "resultado: é #{total}"
        puts 'executando o teste'
    end
end