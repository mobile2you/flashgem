# frozen_string_literal: true

module M2yFlash
  class Configuration    

    attr_writer :api_server_url, :api_server_token

    def initialize #:nodoc:
      @verify_url = nil
      @api_server_url = nil
    end

    def api_server_url
      @api_server_url 
    end

    def api_server_token
      @api_server_token 
    end
  end
end
