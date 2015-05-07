class UsersController < ApplicationController
	def index 
	end

	def new
		@user = User.new
	end

	def show
		authorize @user 
	end

	def edit
		authorize @user
	end

	def update
		authorize @user 

		respond_to do |format|
			if @user.update(user_params)
				format.html {redirect_to @user, notice: "user was successfully updated."}
			end
	end

	def destroy
		authorize @user 
		@user.destroy

		respond_to do |format|
			format.html {redirect_to users_url, notice: "User was successfully destroyed."}
			format.json {head :no_content}
		end
	end
end

