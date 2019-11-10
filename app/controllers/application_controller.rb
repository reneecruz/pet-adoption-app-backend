class ApplicationController < ActionController::API
    private
    def create_token(user_id)
      JWT.encode({ user_id: user_id }, signing_secret, 'HS256')
    end
    def user_id_from_token
      begin
        token = request.headers["Authorization"]
        decoded_token = JWT.decode(token, signing_secret, true, { algorithm: 'HS256' })
        return decoded_token.first["user_id"]
      rescue
        return nil
      end
    end
    def token_is_valid
      user_id_from_token != nil
    end


    def signing_secret
      ENV['JWT_SECRET_KEY']
    end
   end