class SuggestionsController < ApplicationController
  #before_filter :authenticate, only: :edit
      #@short_name = @suggestion_box.short_name
    # @suggestion = @suggestion_box.Suggestion.new
    # # fail
    # ?\binding.pry

  def build_suggestion
    @suggestion = suggestion_box.suggestions.build
  end

  def index
    @suggestions = Suggestion.all

    respond_to do |format|
      format.html
      format.json { render json: @suggestions }
    end
  end

  def show
    @suggestion = suggestion_box.suggestions.find(params[:id])
    # @suggestion = Suggestion.find(params[:id])
    #raise params.inspect

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @suggestion }
    end
  end


#SuggestionBox.find(params[:suggestion_box_id])
  def new
    build_suggestion
    # @suggestion = suggestion_box.suggestions.build
    @suggestion.member = Member.new

    flash[:error] = "Sorry, no suggestion box found with the id #{:id}." and return unless @suggestion_box
    
    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @suggestion }
    end
  end

  def create
   build_suggestion
    @suggestion.member = Member.new
    #@suggestion.member.build
    # @suggestion = Suggestion.new(params[:organization])

    respond_to do |format|
      if @suggestion.save
        #raise params.inspect
        format.html { redirect_to [suggestion_box, @suggestion], notice: 'Suggestion was successfully submitted.' }
        format.json { render json: @suggestion, status: :created, location: @suggestion }
      else
        #raise params.inspect
        format.html { render action: "new" }
        format.json { render json: @suggestion.errors, status: :unprocessable_entity }
      end
    end
  end

  def edit
    @suggestion = Suggestion.find(params[:id])
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

  # private - place helper methods down here
  # def authorize
  #   if current_user && !current_user.admin
  #     redirect_to root_url, alert: "Not authorized"
  # end
end