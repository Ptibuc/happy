class Caracteristique < ActiveRecord::Base
  belongs_to :schema
  has_many :phrases
end
