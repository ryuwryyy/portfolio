class Ask < ActiveRecord::Base
  has_many :questions
  belongs_to :user
  validates_presence_of :text

end
