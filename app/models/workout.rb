class Workout < ActiveRecord::Base
	belongs_to :program
	belongs_to :exercise
end
