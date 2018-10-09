class Thing < ApplicationRecord
  has_many :thingcomments
  validates :title, presence: true, length: {minimum: 2} 
end
