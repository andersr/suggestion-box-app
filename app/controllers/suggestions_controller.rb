    class SuggestionsController < ApplicationController

      before_filter :set_suggestion_box
      
      def index
        @suggestions = @suggestion_box.suggestions.all

        respond_to do |format|
          format.html
          format.json { render json: @suggestions }
        end
      end 

      def show
        @suggestion = @suggestion_box.suggestions.find(params[:id])

        respond_to do |format|
          format.html # show.html.erb
          format.json { render json: @suggestion }
        end
      end

      def new
        @suggestion = @suggestion_box.suggestions.build
        @suggestion.textcaptcha
       
        respond_to do |format|
          format.html # new.html.erb
          format.json { render json: @suggestion_box }
        end
      end

      def create
        # the form fields were not saving to the db because I was not reading in the hash
        # with params from the form via params[:suggestion]
        @suggestion = @suggestion_box.suggestions.build(params[:suggestion])

        #send mail notification to suggestion box owner with the new suggestion

          if @suggestion.save
            #pry.bind
            #send notification email to the owner_email
            #UserMailer.welcome_email(@user).deliver

            SuggestionBoxMailer.new_suggestion_notification(@suggestion_box,@suggestion).deliver
          

          #redirect_to suggestion_box_suggestion_path(@suggestion_box, @suggestion), notice: "Thanks!  We appreciate your input!"
          redirect_to [@suggestion_box, @suggestion], notice: "Thanks!  We appreciate your input!"
          else
           # render action: "new"
            render json: @suggestion.errors
          end
      end

      def edit
        @suggestion = @suggestion_box.suggestions.find(params[:id])
      end

      def update
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