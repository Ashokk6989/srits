class Project < ActiveRecord::Base
  attr_accessible :client, :name
  has_many :performances
end
