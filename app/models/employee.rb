class Employee < ApplicationRecord
  belongs_to :manager
  has_many :mettings
  has_many :projects, through: :mettings
end
