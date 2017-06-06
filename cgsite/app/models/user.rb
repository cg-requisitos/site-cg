class User < ApplicationRecord
  has_many :phones
  accepts_nested_attributes_for :phones
end
