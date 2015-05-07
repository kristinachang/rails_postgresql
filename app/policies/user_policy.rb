class UserPolicy
	attr_reader :user

	def initialize(user)
	@user = user

	end


	def show?
	user_id == user.try(:id)
	end

	def edit?
	show?
	end

	def update?
	show?
	end

	def destroy?
	show?
	end
	end