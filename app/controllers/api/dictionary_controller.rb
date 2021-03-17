class Api::DictionaryController < ApplicationController
  def index
    response = HTTP.get("https://od-api.oxforddictionaries.com/api/v2")

    render json: response.parse
  end
end

#base url: https://od-api.oxforddictionaries.com/api/v2

#response = HTTP.get("https://od-api.oxforddictionaries.com/api= #{Rails.application.credentials[:api_key]}")
