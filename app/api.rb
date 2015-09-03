module Acme
  class API < Grape::API
    prefix 'api'
    format :json
    mount ::Acme::Ping
    mount ::Acme::PathVersioning
    mount ::Acme::PostPut
    mount ::Acme::PostJson
    mount ::Acme::GetJson
    mount ::Acme::ContentType
    add_swagger_documentation api_version: 'v1'
  end
end
