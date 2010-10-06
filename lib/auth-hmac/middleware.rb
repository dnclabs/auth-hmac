class AuthHMAC
  class Middleware
    def initialize(app, credentials)
      @app = app
      @hmac = AuthHMAC.new(credentials)
    end

    def call(env)
      dup.call!(env)
    end

    def call!(env)
      @env = env

      if @hmac.authenticated?(request)
        rx = Regexp.new("#{@hmac.service_id} ([^:]+):(.+)$")

        if md = rx.match(@hmac.authorization_header(request))
          env["auth-hmac.access_key_id"] = md[1]
        else
          raise "Unknown request"
        end

        @app.call(env)
      else
        Rack::Response.new("Authorization required", 401).finish
      end
    end

    def request
      @request ||= Rack::Request.new(@env)
    end
  end
end
