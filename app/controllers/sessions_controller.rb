class SessionsController < ApplicationController
  # # GET /sessions
  # # GET /sessions.json
  # def index
  #   @sessions = Session.all

  #   respond_to do |format|
  #     format.html # index.html.erb
  #     format.json { render json: @sessions }
  #   end
  # end

  # # GET /sessions/1
  # # GET /sessions/1.json
  # def show
  #   @session = Session.find(params[:id])

  #   respond_to do |format|
  #     format.html # show.html.erb
  #     format.json { render json: @session }
  #   end
  # end

  # GET /sessions/new
  # GET /sessions/new.json
  def new
    @session = Session.new
    params[:remember_me] = true

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @session }
    end
  end

  # GET /sessions/1/edit
  # def edit
  #   @session = Session.find(params[:id])
  # end

  # POST /sessions
  # POST /sessions.json
  def create
    user = User.find_by_email(params[:email])

    if user && user.authenticate(params[:password])
      if params[:remember_me]
        cookies.permanent[:auth_token] = user.auth_token
      else
        cookies[:auth_token] = user.auth_token
      end
      #session[:user_id] = user.id 
      redirect_to suggestion_boxes_url, notice:"Logged In!"
    else
      flash.now.alert = "Email or password is invalid :("
      render "new"
    end

    # respond_to do |format|
    #   if @session.save
    #     format.html { redirect_to @session, notice: 'Session was successfully created.' }
    #     format.json { render json: @session, status: :created, location: @session }
    #   else
    #     format.html { render action: "new" }
    #     format.json { render json: @session.errors, status: :unprocessable_entity }
    #   end
    # end
  end

  # PUT /sessions/1
  # PUT /sessions/1.json
  # def update
  #   @session = Session.find(params[:id])

  #   respond_to do |format|
  #     if @session.update_attributes(params[:session])
  #       format.html { redirect_to @session, notice: 'Session was successfully updated.' }
  #       format.json { head :no_content }
  #     else
  #       format.html { render action: "edit" }
  #       format.json { render json: @session.errors, status: :unprocessable_entity }
  #     end
  #   end
  # end

  # DELETE /sessions/1
  # DELETE /sessions/1.json
  def destroy
    cookies.delete(:auth_token)
    session[:user_id] = nil
    redirect_to suggestion_boxes_url, notice: "You've been signed out"
  #   @session = Session.find(params[:id])
  #   @session.destroy

  #   respond_to do |format|
  #     format.html { redirect_to sessions_url }
  #     format.json { head :no_content }
  #   end
  end
end
