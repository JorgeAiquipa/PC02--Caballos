class HorsesController < ApplicationController
  # GET /horses
  # GET /horses.json
  def index
    @horses = Horse.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @horses }
    end
  end

  # GET /horses/1
  # GET /horses/1.json
  def show
    @horse = Horse.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @horse }
    end
  end

  # GET /horses/new
  # GET /horses/new.json
  def new
    @horse = Horse.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @horse }
    end
  end

  # GET /horses/1/edit
  def edit
    @horse = Horse.find(params[:id])
  end

  # POST /horses
  # POST /horses.json
  def create
    @horse = Horse.new(params[:horse])

    respond_to do |format|
      if @horse.save
        format.html { redirect_to @horse, notice: 'Horse was successfully created.' }
        format.json { render json: @horse, status: :created, location: @horse }
      else
        format.html { render action: "new" }
        format.json { render json: @horse.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /horses/1
  # PUT /horses/1.json
  def update
    @horse = Horse.find(params[:id])

    respond_to do |format|
      if @horse.update_attributes(params[:horse])
        format.html { redirect_to @horse, notice: 'Horse was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @horse.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /horses/1
  # DELETE /horses/1.json
  def destroy
    @horse = Horse.find(params[:id])
    @horse.destroy

    respond_to do |format|
      format.html { redirect_to horses_url }
      format.json { head :no_content }
    end
  end
end
