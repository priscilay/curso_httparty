describe 'fazer requisicao', :post do

    it 'post' do
       @body = 
       {
        "name": "testepri",
        "last_name": "pri",
        "email": "xptara@xpath.com",
        "age": "27",
        "phone": "12345766742",
        "address": "Rua Sao Fernando",
        "state": "Minas Gerais",
        "city": "Itajubá"
       }.to_json 

        #@headers = 
        #{
        # "Accept": 'application/vnd.tasksmanager.v2',
        # 'Content-Type': 'application/json'
        #
        #@request = HTTParty.post('https://api-de-tarefas.herokuapp.com/contacts', body: @body, headers: @headers) 
        #puts @request

    #forma simples do httparty
    @request = Contato.post('/contacts',body: @body)
    puts @request
    end
end