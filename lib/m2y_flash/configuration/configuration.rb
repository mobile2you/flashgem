# frozen_string_literal: true

module M2yFlash
  class Configuration    

    attr_writer :api_server_url, :api_server_token, :api_server_username, :api_server_password

    def initialize #:nodoc:
      @verify_url = nil
      @api_server_url = nil
      @api_server_password = nil
      @api_server_username = nil
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

  end
end
