module M2yFlash

	class FlashStatus 

            def self.getToken
                  url = "#{M2yFlash.configuration.api_server_url}#{TOKEN_PATH}"
                  auth = M2yFlash.configuration.api_server_token
                  login = M2yFlash.configuration.api_server_username
                  password = M2yFlash.configuration.api_server_password
                  req = HTTParty.post(url, headers: { 'Content-type' => 'application/json', 'Authorization' => auth }, body: {login: login , senha: password }.to_json)
                  response = { status: req.code, content: req.parsed_response}
                  content = response[:content]
                  if response[:status] == 200
                    content['access_token']
                  else
                    nil
                  end
            end




		def self.getStatus(numCli)
			auth = getToken
                  if auth.nil?
                        nil
                  else
                        client_id = M2yFlash.configuration.api_server_client
                        ctt_id = M2yFlash.configuration.api_server_contract
            		url = "#{M2yFlash.configuration.api_server_url}#{STATUS_PATH}"
                        req = HTTParty.post(url, :verify => false, headers: { 'Content-type' => 'application/json', 'Authorization' => auth }, body: { clienteId: client_id, cttId: [ctt_id], numCli: [numCli] }.to_json )
                  end
		end

	end
end


