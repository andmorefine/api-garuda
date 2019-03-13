module API
  class Root < Grape::API

    format :json
    content_type :json, 'application/json'

    mount API::V1::Root

    # swaggerの設定
    if defined? GrapeSwaggerRails
      add_swagger_documentation(
        api_version: 'v1',
        base_path: '',
        hide_documentation_path: true,
        hide_format: true)
    end
  end
end
