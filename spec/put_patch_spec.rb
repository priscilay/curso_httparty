describe 'fazer requisicao', :put_patch do
    context 'para alteras dados com' do
         it 'put' do
             @body_put = 
             {
                "id": 9,
                "name": "testepri",
                "last_name": "pri",
                "email": "xptara@xpatgttyh.com",
                "age": "27",
                "phone": "12345766742",
                "address": "Rua Sao Fernando",
                "state": "Minas Gerais",
                "city": "Itajubá"

             }.to_json
            @request_put =  Contato.put('/contacts/776', body: @body_put)
            puts @request_put
         end
         
         it 'path' do
             @body_patch = 
             {
                "id": 10,
                "name": "testeribeiro",
                "last_name": "defrancacandido"

             }.to_json
             @request_pacth = Contato.patch('/contacts/776', body: @body_patch)
             puts @request_pacth
         end
    end
end