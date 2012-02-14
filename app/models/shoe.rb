class Shoe < ActiveRecord::Base
	has_many :runs
	belongs_to :user
  validates :brand, :presence => true
  validates :description, :presence => true


	scope :nutzer, lambda {|current_user| where(:user_id => current_user)}
end
