class Book < ApplicationRecord
  belongs_to :author
  has_one :authorship
end
