class OrderHistory < ApplicationRecord
  belongs_to :supplier

  ####################################### VALIDATION
  validates :unique_id, presence: true, uniqueness: true
  validates :amount,      presence: true
  validates :date,        presence: true
  validates :buyer_name,  presence: true
  validates :label,       presence: true


end
