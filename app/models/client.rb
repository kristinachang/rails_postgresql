class Client < User
	belongs_to :trainer, foreign_key: 'trainer_id'
	has_many :entries
	has_many :programs
end
