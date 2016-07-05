module Apicontent
  class Base < Grape::API
    mount Apicontent::V1::Schemas
    mount Apicontent::V2::Api
  end
end
