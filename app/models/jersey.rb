class Jersey < ApplicationRecord
  belongs_to :team, optional: true
  belongs_to :brand, optional: true
  has_many :reviews, dependent: :destroy

  def avg_score
    reviews.average(:rating).round(2).to_f
  end
end
