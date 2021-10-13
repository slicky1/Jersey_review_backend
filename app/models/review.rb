class Review < ApplicationRecord
  belongs_to :user, optional: true
  belongs_to :jersey, optional: true

 
end
