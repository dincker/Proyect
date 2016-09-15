class IngresarController < ApplicationController
	def new
		@usuario = User.new()
	end

	def create
		if @usuario = login(params[:nombre],params[:password_diest])
		refirect_back_or_to(welcome_path, message: "login exitoso")
		else
			sadf
			flash.now[:alert] = "Algo salio mal"
			render action: :new
		end
	end

	def destroy
		logout
		redirect_to(:usuario, message: "Salio")
	end
end
