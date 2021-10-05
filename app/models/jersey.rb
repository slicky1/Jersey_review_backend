class Jersey < ApplicationRecord
  belongs_to :team
  belongs_to :brand
  has_many :reviews
end
