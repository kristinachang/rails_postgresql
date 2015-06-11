class ClientsController < ApplicationController
	
	def index
		# GET /trainers/:trainer_id/clients  trainer_clients
		# This is a trainer's page with links to all of his/her clients.
	end

	def show
		# GET /clients/:id  client
		# This is a client's show page, it is the client's home page that his/her trainer can also see.
		@client = User.find(params[:id])
		# if the current user is this client's trainer OK
		# if the current user is this client OK
		if current_user == @client || current_user == @client.trainer
			render :show
		# else not OK
		else
			redirect_to '/'
		end
		
		# byebug
		
		# user_params = session[:id]
		# user_params = session["warden.user.user.key"][0][0]
		# user = User.find(user_params)

		# if user.user_type != "Client"
		# 	redirect_to '/'
		# end
	end

	def update
		# This is the child of User. This updates the client's profile.
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
