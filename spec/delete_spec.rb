describe 'fazer requisicao', :del do
    it 'delete' do
        #HTTParty.delete('url inteira', headers) sem o modulo

        @delete = Contato.delete('/contacts/23')
        puts @delete
    end
end