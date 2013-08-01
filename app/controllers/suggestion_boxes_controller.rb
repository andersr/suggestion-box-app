      class SuggestionBoxesController < ApplicationController
        # GET /suggestion_boxes
        # GET /suggestion_boxes.json

        #before_filter :authorize, only: [:new, :edit, :update, :destroy]

        def index
          @suggestion_boxes = SuggestionBox.all

          respond_to do |format|
            format.html # index.html.erb
            format.json { render json: @suggestion_boxes }
          end
        end

        # GET /suggestion_boxes/1
        # GET /suggestion_boxes/1.json

      #get all the suggestions for this suggestion box
        def show
          @suggestion_box = SuggestionBox.find(params[:id])
          @suggestions = @suggestion_box.suggestions.all

          respond_to do |format|
            format.html # show.html.erb
            format.json { render json: @suggestion_box }
          end
        end

        # GET /suggestion_boxes/new
        # GET /suggestion_boxes/new.json
        def new
          @suggestion_box = SuggestionBox.new

          respond_to do |format|
            format.html # new.html.erb
            format.json { render json: @suggestion_box }
          end
        end

        # GET /suggestion_boxes/1/edit
        def edit
          @suggestion_box = SuggestionBox.find(params[:id])
        end

        # POST /suggestion_boxes
        # POST /suggestion_boxes.json
        def create
          @suggestion_box = SuggestionBox.new(params[:suggestion_box])

          respond_to do |format|
            if @suggestion_box.save
              format.html { redirect_to @suggestion_box, notice: "Your suggestion box has been created." }
              format.json { render json: @suggestion_box, status: :created, location: @suggestion_box }
            else
              format.html { render action: "new" }
              format.json { render json: @suggestion_box.errors, status: :unprocessable_entity }
            end
          end
        end

        # PUT /suggestion_boxes/1
        # PUT /suggestion_boxes/1.json
        def update
          @suggestion_box = SuggestionBox.find(params[:id])

          respond_to do |format|
            if @suggestion_box.update_attributes(params[:suggestion_box])
              format.html { redirect_to @suggestion_box, notice: 'Suggestion box was successfully updated.' }
              format.json { head :no_content }
            else
              format.html { render action: "edit" }
              format.json { render json: @suggestion_box.errors, status: :unprocessable_entity }
            end
          end
        end

        # DELETE /suggestion_boxes/1
        # DELETE /suggestion_boxes/1.json
        def destroy
          @suggestion_box = SuggestionBox.find(params[:id])
          @suggestion_box.destroy

          respond_to do |format|
            format.html { redirect_to suggestion_boxes_url }
            format.json { head :no_content }
          end
        end

        # def passcode
        #   @suggestion_box = SuggestionBox.find(params[:id])
        # end
      end
