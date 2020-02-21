describe 'fazer uma requisicao', :resp do
    it 'get' do
        @mehorpcao = Contato.get('/contacts/776')
        puts @mehorpcao.code
        expect(@mehorpcao.code).to eq 200

        puts @mehorpcao.parsed_response['data']['attributes']['last-name']
        expect(@mehorpcao.parsed_response['data']['attributes']['last-name']).to eq 'defrancacandido'
        expect(@mehorpcao.parsed_response['data']['attributes']['age']).to eq 27
       
    
    end
end