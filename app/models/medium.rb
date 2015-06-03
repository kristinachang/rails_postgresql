class Medium < ActiveRecord::Base
	belongs_to :exercise
	belongs_to :trainer
end
