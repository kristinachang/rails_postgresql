class EntriesController < ApplicationController

	def index
		# GET /clients/:client_id/entries  client_entries
		# @entries = @client.Entry.all
	end

	def new
		# GET /clients/:client_id/entries/new  new_client_entry
		@entry = Entry.new
	end

	def create
		# POST /clients/:client_id/entries
	end

	def show
		# GET /entries/:id  entry
	end

	def edit
		# GET /entries/:id/edit  edit_entry
	end

	def update
		# PUT /entries/:id
	end

	def destroy
		# DELETE /entries/:id
	end

end
