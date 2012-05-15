class Program < ActiveRecord::Base
  attr_accessible :end, :name, :start
  validates :name, :uniqueness => true, :presence => :true

  belongs_to :user
end
