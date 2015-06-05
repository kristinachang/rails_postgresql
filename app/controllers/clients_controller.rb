class ClientsController < ApplicationController
	
	def index
		# GET /trainers/:trainer_id/clients  trainer_clients
	end

	def show
		# GET /clients/:id  client
		@client = User.find(params[:id])
		# if the current user is this client's trainer OK
		if current_user == @client || current_user == @client.trainer
			render :show
		else
			redirect_to '/'
		end
		# if the current user is the client OK
		# else not OK
		
		# byebug
		
		# user_params = session[:id]
		# user_params = session["warden.user.user.key"][0][0]
		# user = User.find(user_params)

		# if user.user_type != "Client"
		# 	redirect_to '/'
		# end
	end

	def update
		clientParams = user_params
		@client = current_user
		if @client.update_attributes clientParams
			redirect_to client_path @client
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
		params.require(:client).permit(:first_name, :last_name, :gender, :height, :weight, :age, :phone, :occupation)
	end

end
