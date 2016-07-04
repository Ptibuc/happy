class Schema < ActiveRecord::Base
  belongs_to :site
  has_many :caracteristiques
end
