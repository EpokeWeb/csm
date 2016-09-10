class BloguesController < ApplicationController
  before_action :set_blogue, only: [:show, :edit, :update, :destroy]

  # GET /blogues
  # GET /blogues.json
  def index
    @blogues = Blogue.all
  end

  # GET /blogues/1
  # GET /blogues/1.json
  def show
  end

  # GET /blogues/new
  def new
    @blogue = Blogue.new
  end

  # GET /blogues/1/edit
  def edit
  end

  # POST /blogues
  # POST /blogues.json
  def create
    @blogue = Blogue.new(blogue_params)

    respond_to do |format|
      if @blogue.save
        format.html { redirect_to @blogue, notice: 'Blogue was successfully created.' }
        format.json { render :show, status: :created, location: @blogue }
      else
        format.html { render :new }
        format.json { render json: @blogue.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /blogues/1
  # PATCH/PUT /blogues/1.json
  def update
    respond_to do |format|
      if @blogue.update(blogue_params)
        format.html { redirect_to @blogue, notice: 'Blogue was successfully updated.' }
        format.json { render :show, status: :ok, location: @blogue }
      else
        format.html { render :edit }
        format.json { render json: @blogue.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /blogues/1
  # DELETE /blogues/1.json
  def destroy
    @blogue.destroy
    respond_to do |format|
      format.html { redirect_to blogues_url, notice: 'Blogue was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_blogue
      @blogue = Blogue.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def blogue_params
      params.require(:blogue).permit(:titre, :contenu)
    end
end
