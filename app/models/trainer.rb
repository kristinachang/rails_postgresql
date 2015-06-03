class Trainer < User
	has_many :clients, foreign_key: 'trainer_id'
	has_many :media
end
