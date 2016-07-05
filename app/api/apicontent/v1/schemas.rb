module Apicontent
  module V1
    class Schemas < Grape::API
      version 'v1', using: :path
      format :json
      prefix :api

      resource :schemas do

        desc "Retourne la liste des schemas"
        get do
          Schema.all
        end

        desc "Retourne la fiche d'un schéma"
        params do
          requires :id, type: Integer, desc: "Schema id"
        end
        route_param :id do
          get do
            Schema.find(params[:id])
          end
        end

        desc "Ajouter un schéma"
        params do
          requires :schema, type: Hash do
            requires :name, type: String
            requires :site_id, type: Integer
          end
        end
        post do
          Schema.create!(params[:schema])
        end

        desc "Liste des caractéristiques pour un "

      end

    end
  end
end
