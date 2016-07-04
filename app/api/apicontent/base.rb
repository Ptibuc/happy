module Apicontent
  class Base < Grape::API
    mount Apicontent::V1::Schemas
  end
end
