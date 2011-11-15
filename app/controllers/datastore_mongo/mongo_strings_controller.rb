module DatastoreMongo
  class MongoStringsController < ApplicationController
    # GET /mongo_strings
    # GET /mongo_strings.json
    def index
      @mongo_strings = MongoString.all
  
      respond_to do |format|
        format.html # index.html.erb
        format.json { render json: @mongo_strings }
      end
    end
  
    # GET /mongo_strings/1
    # GET /mongo_strings/1.json
    def show
      @mongo_string = MongoString.find(params[:id])
  
      respond_to do |format|
        format.html # show.html.erb
        format.json { render json: @mongo_string }
      end
    end
  
    # GET /mongo_strings/new
    # GET /mongo_strings/new.json
    def new
      @mongo_string = MongoString.new
  
      respond_to do |format|
        format.html # new.html.erb
        format.json { render json: @mongo_string }
      end
    end
  
    # GET /mongo_strings/1/edit
    def edit
      @mongo_string = MongoString.find(params[:id])
    end
  
    # POST /mongo_strings
    # POST /mongo_strings.json
    def create
      @mongo_string = MongoString.new(params[:mongo_string])
  
      respond_to do |format|
        if @mongo_string.save
          format.html { redirect_to @mongo_string, notice: 'Mongo string was successfully created.' }
          format.json { render json: @mongo_string, status: :created, location: @mongo_string }
        else
          format.html { render action: "new" }
          format.json { render json: @mongo_string.errors, status: :unprocessable_entity }
        end
      end
    end
  
    # PUT /mongo_strings/1
    # PUT /mongo_strings/1.json
    def update
      @mongo_string = MongoString.find(params[:id])
  
      respond_to do |format|
        if @mongo_string.update_attributes(params[:mongo_string])
          format.html { redirect_to @mongo_string, notice: 'Mongo string was successfully updated.' }
          format.json { head :ok }
        else
          format.html { render action: "edit" }
          format.json { render json: @mongo_string.errors, status: :unprocessable_entity }
        end
      end
    end
  
    # DELETE /mongo_strings/1
    # DELETE /mongo_strings/1.json
    def destroy
      @mongo_string = MongoString.find(params[:id])
      @mongo_string.destroy
  
      respond_to do |format|
        format.html { redirect_to mongo_strings_url }
        format.json { head :ok }
      end
    end
  end
end
