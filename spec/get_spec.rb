describe 'fazer uma requisicao', :get do
    it 'get' do
        #caso nao use o modulo, chamariamos o get assim:
        # @primeiraopcao = HTTParty.get('https://api-de-tarefas.herokuapp.com/contacts/770')
        # puts @primeiraopcao

        @mehorpcao = Contato.get('/contacts/23')
        puts @mehorpcao
    end
end