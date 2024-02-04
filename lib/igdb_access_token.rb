require 'net/http'
module IgdbAccessToken
    # Internet Game Database Authentication flow found here: https://api-docs.igdb.com/#account-creation
    def igdb_access_token()
        token_name = "twitch_chat_backend"
        available_token = ApiInformation.where(["token_name = ?", token_name]).last
        token_expiration = available_token.created_at + available_token.expires_in.seconds

        # Makes sure there is a token and then makes sure that the token is not expired
        if available_token && (token_expiration > Date.current)
            return available_token

        # If the last token was expired we need to get another one and store it for future use
        else
            uri = URI('https://id.twitch.tv/oauth2/token')
            res = Net::HTTP.post_form(uri, client_id: ENV['CLIENT_ID'], client_secret:ENV['CLIENT_SECRET'], grant_type: 'client_credentials')
            msg_parts = JSON.parse(res.body)

            available_token = ApiInformation.new(access_token: msg_parts["access_token"], token_name: token_name, token_type: msg_parts["token_type"], expires_in: msg_parts["expires_in"])
            if available_token.save
                return available_token
            else
                puts "FAIL access token save"
            end
        end
    end
end
