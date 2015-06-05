class ProgramsController < ApplicationController

	def index
		# GET /clients/:client_id/programs  client_programs
	end

	def new
		# GET /clients/:client_id/programs/new  new_client_program
	end

	def create
		# POST /clients/:client_id/programs
	end

	def show
		# GET /programs/:id  program
	end

	def edit
		# GET /programs/:id/edit  edit_program
	end

	def update
		# PUT /programs/:id
	end

	def destroy
		# DELETE /programs/:id
	end
	
end
