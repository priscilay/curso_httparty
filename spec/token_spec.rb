describe 'usando', :token do
    it 'token' do
        @email = Faker::Internet.email

        @body =  {
            user: {
                email: @email,
                password: '123456',
                password_confirmation: '123456' 
            }
        }.to_json

        @headers = {
            Accept: 'application/vnd.tasksmanager.v2',
                   'Content-Type': 'application/json'
        }

        @criar = Criar.post('/users', body: @body, headers: @headers)
        puts @criar.body
        puts @criar.code
        puts @criar.parsed_response['data']['attributes']['auth-token']
        @token = @criar.parsed_response['data']['attributes']['auth-token']
        puts @token

        @body_one = {
            session: {
                email: @email,
                password: '123456'
            }
        }.to_json

        @header_one = {
            Accept: 'application/vnd.tasksmanager.v2',
            'Content-Type': 'application/json',
            Authorization: "#{@token}"
        }

        @login = Criar.post('/sessions', body: @body_one, headers: @header_one)
        puts @login.body
        puts 'login sucess'
    end
end