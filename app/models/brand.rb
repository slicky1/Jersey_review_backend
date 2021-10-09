class Brand < ApplicationRecord
    has_many :jerseys, dependent: :destroy
end
