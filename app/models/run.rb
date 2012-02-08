class Run < ActiveRecord::Base
before_validation :remove_comma

	belongs_to :user
	belongs_to :shoe

  validates :distance, numericality: {:greater_than => 0, :less_than => 200}
  validates :run_hours, numericality: {:only_integer => true, :greater_than_or_equal_to => 0, :less_than => 24}
  validates :run_minutes, numericality: {:only_integer => true, :greater_than_or_equal_to => 0, :less_than => 60}
  validates :run_seconds, numericality: {:only_integer => true, :greater_than_or_equal_to => 0, :less_than => 60}

	scope :nutzer, lambda {|current_user| where(:user_id => current_user)}
	scope :zeitraum, lambda {|startdatum, enddatum| where(:run_at => (startdatum)..(enddatum))}
	scope :schuhmarke, lambda {|schuh| where(:shoe_id => schuh)}
	#scope :summe, sum(:distance) funktioniert nicht ! siehe unten, deswegen wird sie im Controller angehängt
	#def self.summe
	# sum('distance')
	#end
	#scope :summe, sum('distance') Scope-compatible methods return a scoped object, not a number as is the case with sum. 
	#You need to use this approach with things that return a final value that can't be scoped further.
	#http://stackoverflow.com/questions/7366193/why-does-using-sum-in-a-rails-3-1-scope-result-in-an-error


	def remove_comma
		@attributes["distance"].gsub!(',', '.') if attribute_present?("distance")
	end

end
