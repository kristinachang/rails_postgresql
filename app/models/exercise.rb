class Exercise < ActiveRecord::Base
	has_many :workouts
	has_many :programs, through: :workouts
	has_many :media
end
