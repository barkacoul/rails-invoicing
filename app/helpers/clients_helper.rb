module ClientsHelper
    def pas_clients(clients)
        content_tag('li', 'Pas de clients enregistrés dans la base de données') if clients.empty?
    end
end
