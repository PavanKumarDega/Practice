class Author < ApplicationRecord
  has_many :books
  has_many :authorships, through: :books
end
