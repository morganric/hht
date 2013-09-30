class Project < ActiveRecord::Base
  attr_accessible :name, :user_id


  validates_presence_of :name

  belongs_to :user
  has_many :option_cards

end
