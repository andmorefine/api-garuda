module API
  module V1
    class Root < Grape::API
      prefix 'api'
      version 'v1', using: :path
      format :json
      content_type :json, 'application/json'

      # mount API::V1::Proverbs
      mount API::V1::OneHundredPeople

    end
  end
end
