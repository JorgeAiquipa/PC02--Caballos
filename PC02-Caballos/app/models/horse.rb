class Horse < ActiveRecord::Base
	validates :ratio, :numericality => { :greater_than => 1, :less_than_or_equal_to => 1000 }
end
