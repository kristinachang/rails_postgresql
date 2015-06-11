class TrainersController < ApplicationController

	def show
		# GET /trainers/:id  trainer
		# This is a trainer's show page, it is the trainer's home page.
		@trainer = User.find(params[:id])
		
		if current_user == @trainer
			render :show
		else
			redirect_to '/'
		end

		# byebug
		
		# user_params = session[:id]
		# user_params = session["warden.user.user.key"][0][0]
		# user = User.find(user_params)

		# if user.user_type != "Trainer"
		# 	redirect_to '/'
		# end
	end

	def update
		# This is the child of User. This updates the trainer's profile.
		trainerParams = user_params
		@trainer = current_user
		if @trainer.update_attributes trainerParams
			redirect_to trainer_path @trainer
		else
			render :edit
		end
		# respond_to do |format|
		# 	if current_user.update(user_params)
		# 		format.html {redirect_to @user, notice: "user was successfully updated."}
		# 	end
		# end
	end

	private

	def user_params 
		params.require(:trainer).permit(:first_name, :last_name, :gender, :height, :weight, :age, :phone, :certifications)
	end

end
