class ClientsController < ApplicationController
	before_filter :signed_in_user
	def new
		@client=Client.new		
	end

	def create
		@client = Client.new(params[:client])
		if @client.save
			redirect_to @client
		else
			render 'new'
		end
	end

	def update
		@client = Client.find(params[:id]) 
		if @client.update_attributes(params[:client])
			redirect_to client_path(@client)
		else
			redirect_to client_path(@client)
		end
	end

	def edit
		@client = Client.find(params[:id]) 
	end

	def destroy
		@client = Client.find(params[:id]) 
		@client.destroy
		redirect_to clients_path
	end

	def index
		@client = Client.find(:all)
	end

	def show
		@client = Client.find(params[:id])
	end

	private
	    def signed_in_user
	      redirect_to signin_url, notice: "Please sign in" unless signed_in?
	    end


end
