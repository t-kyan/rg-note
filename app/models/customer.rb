class Customer < ApplicationRecord
  belongs_to :user
  has_many :bottles
  has_one_attached :image
end