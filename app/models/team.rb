class Team < ApplicationRecord
  belongs_to :country, optional: true
  has_many :jerseys, dependent: :destroy

end
