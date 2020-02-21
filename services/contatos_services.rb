module Contato
    #incluindo httparty
    include HTTParty

    #url base de contato
    base_uri 'https://api-de-tarefas.herokuapp.com'

    #opcoes do meu service
    format :json
    headers Accept: 'application/vnd.tasksmanager.v2',
                   'Content-Type': 'application/json'
end

#toda vez que chamar esse modulo a url padrao sera  base_uri com seus dados headers, formatos e etc