class UsersController < ApplicationController
	# def index 
	# end

	# def new
		# @user = User.new
	# end

	# def create
		# do I need this method? does Devise do this for me?
	# end

	def show
		# GET /profile  profile
		@user = current_user
	end

	def edit
		# GET /profile/edit  edit_profile
		@user = current_user
		
	end

	# def update
		# binding.pry
		# respond_to do |format|
		# 	if current_user.update(user_params)
		# 		format.html {redirect_to @user, notice: "user was successfully updated."}
		# 		puts "\n\n\n\ User", current_user
		# 	end
		# end
		# puts "\n\n\n\ User", current_user
	# end

	# def destroy
		# @user.destroy

		# respond_to do |format|
		# 	format.html {redirect_to users_url, notice: "User was successfully destroyed."}
		# 	format.json {head :no_content}
		# end
	# end

	# private

	# def user_params 
	# 	params.require(:user).permit(:email, :password, :first_name, :last_name, :gender, :height, :weight, :age, :phone, :occupation, :certifications)
	# end
end

