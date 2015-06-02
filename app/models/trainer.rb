class Trainer < User
	has_many :clients, foreign_key: 'trainer_id'
end
