class Client < User
	belongs_to :trainer, foreign_key: 'trainer_id'
end
