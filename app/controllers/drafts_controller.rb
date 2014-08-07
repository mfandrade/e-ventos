class DraftsController < ApplicationController
  before_action :set_draft, only: [:show, :edit, :update, :destroy]

  # GET /drafts
  # GET /drafts.json
  def index
    @drafts = Draft.all
  end

  # GET /drafts/1
  # GET /drafts/1.json
  def show
  end

  # GET /drafts/new
  def new
    @draft = Draft.new
  end

  # GET /drafts/1/edit
  def edit
  end

  # POST /drafts
  def create
    @draft = Draft.new(draft_params)
    if @draft.save
      redirect_to @draft, notice: 'Draft was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /drafts/1
  def update
    if @draft.update(draft_params)
      redirect_to @draft, notice: 'Draft was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /drafts/1
  def destroy
    @draft.destroy
    redirect_to drafts_url, notice: 'Draft was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_draft
      @draft = Draft.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def draft_params
      params.require(:draft).permit(:name)
    end
end
