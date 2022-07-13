class Project < ApplicationRecord
  has_many :managers
  has_many :mettings
  has_many :employees, through: :mettings

end
