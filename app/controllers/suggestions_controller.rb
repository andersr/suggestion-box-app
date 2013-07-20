    class SuggestionsController < ApplicationController
      #before_filter :authenticate, only: :edit
          #@short_name = @suggestion_box.short_name
        # @suggestion = @suggestion_box.Suggestion.new
        # # fail
        # ?\binding.pry

        #respond_to :html, :xml, :json


      # def build_suggestion
      #   @suggestion = suggestion_box.suggestions.build
      # end

      before_filter :set_suggestion_box

      def index
        #@suggestion_box = SuggestionBox.find(params[:suggestion_box_id])
        #@suggestion = @suggestion_box.suggestions.find(params[:id])
        @suggestions = @suggestion_box.suggestions.all

        respond_to do |format|
          format.html
          format.json { render json: @suggestions }
        end
      end 

      def show
        #@suggestion_box = SuggestionBox.find(params[:suggestion_box_id])
        @suggestion = @suggestion_box.suggestions.find(params[:id])

        respond_to do |format|
          format.html # show.html.erb
          format.json { render json: @suggestion }
        end
      end

    #SuggestionBox.find(params[:suggestion_box_id])
      # def new_short_name
      #   @suggestion_box = SuggestionBox.find_by_short_name(params[:short_name])
      #   @suggestion = @suggestion_box.suggestions.build

      # end

    #SuggestionBox.find(params[:suggestion_box_id])
      def new
        @suggestion = @suggestion_box.suggestions.build
        @suggestion.textcaptcha
       
        #flash[:error] = "Sorry, no suggestion box found with the id #{:id}." and return unless @suggestion_box
        
      #   respond_to do |format|
      #     format.html # new.html.erb
      #     format.json { render json: @suggestion_box }
      #   end
      end

      def create
        # the form fields were not saving to the db because I was not reading in the hash
        # with params from the form via params[:suggestion]
        @suggestion = @suggestion_box.suggestions.build(params[:suggestion])

        #send mail notification to suggestion box owner with the new suggestion

          if @suggestion.save

            #send notification email to the owner_email
           SuggestionBoxMailer.new_suggestion_notification(@suggestion_box, @suggestion).deliver

            redirect_to [@suggestion_box, @suggestion], notice: "Thanks!  We appreciate your input!"
          else
           render action: "new"
          end
      end

      def edit
        #@suggestion_box = SuggestionBox.find(params[:suggestion_box_id])
        @suggestion = @suggestion_box.suggestions.find(params[:id])
      end

      def update
        #@suggestion = Suggestion.find(params[:id])

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
        #@suggestion = Suggestion.find(params[:id])
        @suggestion.destroy

        respond_to do |format|
          format.html { redirect_to suggestions_url }
          format.json { head :no_content }
        end
      end

      private

      def set_suggestion_box

        if params[:short_name]
          Rails.logger.info "short name or not"
            @suggestion_box = SuggestionBox.where("lower(short_name) =?", params[:short_name].downcase).first
          else
            Rails.logger.info "else"
            @suggestion_box = SuggestionBox.find(params[:suggestion_box_id])
        end
      end

      def suggestion_params
        params.require(:suggestion).permit(:suggestion_message)
      end

      # private - place helper methods down here
      # def authorize
      #   if current_user && !current_user.admin
      #     redirect_to root_url, alert: "Not authorized"
      # end
    end