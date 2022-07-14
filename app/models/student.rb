class Student < ApplicationRecord
  has_many :rooms
  has_many :teachers, through: :rooms
end
