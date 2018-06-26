class Supplier < ApplicationRecord

  ####################################### VALIDATION
  validates :corporate_name, presence: true
  validates :siret, presence: true, uniqueness: true
end
