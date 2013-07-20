class UsersController < ApplicationController

	before_filter :authenticate


	def new
		@user = User.new
	end

	def create
		@user = User.new(params[:user])

		respond_to do |format|
			if @user.save
				 session[:user_id] = @user.id
				# redirect_to user_path(@user.id), notice: "Thank you for signing up!"
				# flash[:notice] = "we just created something"
				format.html { redirect_to @user, notice: 'User was successfully registered.' }
				format.json { render json: @user, status: :created, location: @user.new }
			else
				flash[:notice] = "something went wrong"
				render "new"
			end
		end

		# respond_to do |format|
		# 	if @user.save
		# 		format.html { redirect_to @user, notice: 'User was successfully registered.' }
		# 		format.json { render json: @user, status: :created, location: @user }
		# 	else
		# 		format.html { redirect_to root_path, notice: "Sorry, there was a problem with your email address.  Please try again." }
		# 		format.json { render json: @user.errors, status: :unprocessable_entity }
		# 	end
		# end
	end

# when user clicks submit, this method gets called
	# def create
	# 	@user = User.new(params[:user])

	# 	respond_to do |format|
	# 		if @user.save
	# 			format.html { redirect_to root_path, notice: "Thanks, we'll be in touch!" }
	# 			format.json { render json: @user, status: :created, location: @user }
	# 		else
	# 			format.html { render action: "new" }
	# 			format.json { render json: @user.errors, status: :unprocessable_entity }
	# 		end
	# 	end

		# if @user.save
		# 	redirect_to @user.thanks
		# else
		# 	redirect_to root_path
		# end

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
	#end

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
		format.json { render json: @thanks }
		end
	end
end