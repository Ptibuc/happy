class Site < ActiveRecord::Base
  belongs_to :compte
  has_many :schemas
end
