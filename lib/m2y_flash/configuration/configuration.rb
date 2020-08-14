# frozen_string_literal: true

module M2yFlash
  class Configuration    

    attr_writer :api_server_url, :api_server_token, :api_server_username, :api_server_password, :api_server_client, :api_server_contract

    def initialize #:nodoc:
      @verify_url = nil
      @api_server_url = nil
      @api_server_password = nil
      @api_server_username = nil
      @api_server_client = nil
      @api_server_contract = nil
    end

    def api_server_url
      @api_server_url 
    end

    def api_server_token
      @api_server_token 
    end
    
    def api_server_username
      @api_server_username 
    end
    
    def api_server_password
      @api_server_password 
    end

    def api_server_contract
      @api_server_contract 
    end

    def api_server_client
      @api_server_client 
    end

  end
end
