class StoreItemTagsController < ApplicationController
  before_action :set_store_item_tag, only: %i[ show edit update destroy ]

  # GET /store_item_tags or /store_item_tags.json
  def index
    @store_item_tags = StoreItemTag.all
  end

  # GET /store_item_tags/1 or /store_item_tags/1.json
  def show
  end

  # GET /store_item_tags/new
  def new
    @store_item_tag = StoreItemTag.new
  end

  # GET /store_item_tags/1/edit
  def edit
  end

  # POST /store_item_tags or /store_item_tags.json
  def create
    @store_item_tag = StoreItemTag.new(store_item_tag_params)

    respond_to do |format|
      if @store_item_tag.save
        format.html { redirect_to store_item_tag_url(@store_item_tag), notice: "Store item tag was successfully created." }
        format.json { render :show, status: :created, location: @store_item_tag }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @store_item_tag.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /store_item_tags/1 or /store_item_tags/1.json
  def update
    respond_to do |format|
      if @store_item_tag.update(store_item_tag_params)
        format.html { redirect_to store_item_tag_url(@store_item_tag), notice: "Store item tag was successfully updated." }
        format.json { render :show, status: :ok, location: @store_item_tag }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @store_item_tag.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /store_item_tags/1 or /store_item_tags/1.json
  def destroy
    @store_item_tag.destroy

    respond_to do |format|
      format.html { redirect_to store_item_tags_url, notice: "Store item tag was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_store_item_tag
      @store_item_tag = StoreItemTag.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def store_item_tag_params
      params.require(:store_item_tag).permit(:store_item_id, :discount_id)
    end
end
