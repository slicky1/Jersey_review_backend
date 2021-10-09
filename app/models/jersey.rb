class Jersey < ApplicationRecord
  belongs_to :team, optional: true
  belongs_to :brand, optional: true
  has_many :reviews, dependent: :destroy
end
