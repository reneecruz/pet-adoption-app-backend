class ApplicationController < ActionController::API

    private 

    def authentication_json(user_id) 
        { token: make_token(user_id), user_id: user_id }
    end

    # in order to log in 

    def make_token(user_id) 
        payload = { user_id: user_id }
        JWT.encode(payload, hmac_secret, "HS256")
    end

    # in order to authorize 

    def logged_in_user_id 
        token = request.headers["Authorization"]
        begin
            decoded_payload = JWT.decode(token, hmac_secret, true, { algorithm: "HS256" })
        rescue 
            return nil
        end
    end

    def logged_in? 
        !!logged_in_user_id
    end

    def hmac_secret 
        ENV["JWT_SECRET_KEY"]
    end

end
