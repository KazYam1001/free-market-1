class Address < ApplicationRecord
  belongs_to :user, optional: true

  validates :prefecture_id, :city, :house_number, :postal_code, presence: true
end
