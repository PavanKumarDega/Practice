class Teacher < ApplicationRecord
  has_many :rooms
  has_many :students, through: :rooms
end
