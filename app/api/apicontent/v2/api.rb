module Apicontent
  module V2
    class Api < Grape::API
      version 'v2', using: :path
      format :json
      prefix :api

      namespace :sites do

        desc 'Retourne la liste des sites'
        get do
          Site.all
        end

        desc 'Retourne les caractéristiques du site'
        params do
          requires :site, type: Integer
        end
        namespace ':site' do
          get do
            Site.find(params[:site])
          end

          desc 'Retourne la liste des schémas pour ce site'
          namespace ':schemas' do
            get do
              Site.find(params[:site]).schemas
            end

            desc 'Retourne les caractéristiques du schéma'
            params do
              requires :schema, type: Integer
            end
            namespace ':schema' do
              get do
                #Schema.where(id: params[:schema], site_id: params[:site])
                Schema.find(params[:schema])
              end

              desc 'Retourne la liste des caractéristiques enregistrées pour ce schéma'
              namespace ':caracteristiques' do
                get do
                  Schema.find(params[:schema]).caracteristiques
                end

                desc 'Retourne la fiche de la caractéristique sélectionnée'
                params do
                  requires :caracteristique, type: Integer
                end
                namespace ':caracteristique' do
                  get do
                    Caracteristique.find(params[:caracteristique])
                  end

                  desc 'Retourne la liste des phrases pour une caractéristique'
                  namespace ':phrases' do
                    get do
                      Caracteristique.find(params[:caracteristique]).phrases
                    end

                    desc 'Retourne la fiche de la phrase'
                    params do
                      requires :phrase, type: Integer
                    end
                    namespace ':phrase' do
                      get do
                        Phrase.find(params[:phrase])
                      end

                    end

                  end
                end

              end
            end
          end

        end

      end

    end
  end
end
