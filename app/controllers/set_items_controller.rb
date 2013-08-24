class SetItemsController < ApplicationController
  # before_action :set_set_item, only: [:show, :edit, :update, :destroy]

  # GET /set_items
  # GET /set_items.json
  # def index
  #   @set_items = SetItem.all
  # end

  # GET /set_items/1
  # GET /set_items/1.json
  # def show
  # end

  # GET /set_items/new
  # def new
  #   @set_item = SetItem.new
  # end

  # GET /set_items/1/edit
  # def edit
  # end

  # POST /set_items
  # POST /set_items.json
  def create
    @set_item = SetItem.new(set_item_params)

    respond_to do |format|
      if @set_item.save
        format.html { redirect_to event_path(params[:event_id]) }
        format.json { render action: 'show', status: :created, location: @set_item }
      else
        format.html { render action: 'new' }
        format.json { render json: @set_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /set_items/1
  # PATCH/PUT /set_items/1.json
  # def update
  #   respond_to do |format|
  #     if @set_item.update(set_item_params)
  #       format.html { redirect_to @set_item, notice: 'Set item was successfully updated.' }
  #       format.json { head :no_content }
  #     else
  #       format.html { render action: 'edit' }
  #       format.json { render json: @set_item.errors, status: :unprocessable_entity }
  #     end
  #   end
  # end

  # DELETE /set_items/1
  # DELETE /set_items/1.json
  def destroy
    @set_item = SetItem.find(params[:id])
    @set_item.destroy
    respond_to do |format|
      format.html { redirect_to event_path(@set_item.event_id) }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    # def set_set_item
    #   @set_item = SetItem.find(params[:id])
    # end

    # Never trust parameters from the scary internet, only allow the white list through.
    def set_item_params
      params.permit(:song_id, :event_id)
    end
end
