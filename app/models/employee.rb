class Employee < ActiveRecord::Base
  attr_accessible :eamil, :location, :mobile, :name, :platform_id, :commentable_id, :commentable_type
  belongs_to :platform
  has_many :performances
  has_many :comments, :as => :commentable
  def self.search(search)
    if search
      find(:all, :conditions => ['name LIKE ?', "%#{search}%"])
    else
      find(:all)
    end
 end 
end
