class UsersController < ApplicationController
	# def index 
		# If I want to set up Admin view of all users in the future, use this.
	# end

	# def new
		# Devise does this for me.
	# end

	# def create
		# Devise does this for me.
	# end

	def show
		# GET /profile  profile
		# This is the user's profile show page with link to /profile/edit
		@user = current_user
	end

	def edit
		# GET /profile/edit  edit_profile
		# This is the user's profile edit page where user can update their profile.
		@user = current_user
		
	end

	# def update
		# NEEDS to be defined on the child controllers.
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
		# This may need to be defined on the child controllers.
		# @user.destroy

		# respond_to do |format|
		# 	format.html {redirect_to users_url, notice: "User was successfully destroyed."}
		# 	format.json {head :no_content}
		# end
	# end

	# private
	# Defined on child controllers.
	# def user_params 
	# 	params.require(:user).permit(:email, :password, :first_name, :last_name, :gender, :height, :weight, :age, :phone, :occupation, :certifications)
	# end
end

