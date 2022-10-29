class User < ApplicationRecord
    has_many :post, dependent: :destroy
    has_one_attached :image
end
