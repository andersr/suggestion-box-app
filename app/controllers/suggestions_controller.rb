class SuggestionsController < ApplicationController
  before_filter :authenticate

  def index
    @suggestions = Suggestion.all

    respond_to do |format|
      format.html
      format.json { render json: @suggestions }
    end
  end

  def show
    @suggestion = Suggestion.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @suggestion }
    end
  end


  def new

    # @org_shortname
    @suggestion = Suggestion.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @suggestion }
    end
  end

  def edit
    @suggestion = Suggestion.find(params[:id])
  end

  def create
    @suggestion = Suggestion.new(params[:organization])

    respond_to do |format|
      if @suggestion.save
        #raise params.inspect
        format.html { redirect_to @suggestion, notice: 'Suggestion was successfully submitted.' }
        format.json { render json: @suggestion, status: :created, location: @suggestion }
      else
        #raise params.inspect
        format.html { render action: "new" }
        format.json { render json: @suggestion.errors, status: :unprocessable_entity }
      end
    end
  end


  def update
    @suggestion = Suggestion.find(params[:id])

    respond_to do |format|
      if @suggestion.update_attributes(params[:suggestion])
        format.html { redirect_to @suggestion, notice: 'Suggestion was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @suggestion.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @suggestion = Suggestion.find(params[:id])
    @suggestion.destroy

    respond_to do |format|
      format.html { redirect_to suggestions_url }
      format.json { head :no_content }
    end
  end
end