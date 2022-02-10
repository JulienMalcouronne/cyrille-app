class Item < ApplicationRecord
validates :name, presence: true
validates :category, presence: true
validates :era, presence: true
validates :availability, presence: true
has_many_attached :photos
end
