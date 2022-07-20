class ReviewCompany < ApplicationRecord
  belongs_to :reviewable, polymorphic: true
end
