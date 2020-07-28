module M2yFlash

	class FlashStatus 

		def self.getStatus(client_id, ctt_id)
			auth = M2yFlash.configuration.api_server_token
      		url = "#{M2yFlash.configuration.api_server_url}/#{STATUS_PATH}"
      		puts url
      		HTTParty.post(url, 
      			headers: { 'Content-type' => 'application/json',
      				'Accept' => "application/json",
      				'Authorization' => auth }, 
      			body: { clienteId: client_id, cttId: [ctt_id] }.to_json )
		end

	end
end


