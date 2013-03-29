class UsersController < ApplicationController
	def new
		@user = User.new
	end

	def welcome
		@user = User.new
	end


# when user clicks submit, this method gets called
	def create
		@user = User.new(params[:user])

		if @user.save
			redirect_to @user.thanks
		else
			redirect_to root_path
		end

		#if @user.errors.any? - if there were any errors

		# respond_to do |format|
		# 	if @user.save
		# 		format.html { redirect_to @user, notice: 'user was successfully created.' }
		# 		format.json { render json: @user, status: :created, location: @user }
		# 	else
		# 		    flash[:error] = "There were errors..."
		# 		    #render :action => :welcome
		# 	end
		# end
	end

	def show
		@user = User.find(params[:id])

		respond_to do |format|
		format.html # show.html.erb
		format.json { render json: @user }
		end
	end

	def thanks
		@user = User.find(params[:id])

		respond_to do |format|
		format.html # show.html.erb
		format.json { render json: @user }
		end
	end
end