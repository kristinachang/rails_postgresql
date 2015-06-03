class Program < ActiveRecord::Base
	belongs_to :client
	has_many :workouts
	has_many :exercises, through: :workouts
end
