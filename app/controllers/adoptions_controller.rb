class AdoptionsController < ApplicationController
  before_action :set_adoption, only: [:show, :update, :destroy]

  # GET /adoptions
  def index
    @adoptions = Adoption.all

    render json: @adoptions
  end

  # GET /adoptions/1
  def show
    render json: @adoption
  end

  # POST /adoptions
  def create
    @adoption = Adoption.new(adoption_params)

    if @adoption.save
      render json: @adoption, status: :created, location: @adoption
    else
      render json: @adoption.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /adoptions/1
  def update
    if @adoption.update(adoption_params)
      render json: @adoption
    else
      render json: @adoption.errors, status: :unprocessable_entity
    end
  end

  # DELETE /adoptions/1
  def destroy
    @adoption.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_adoption
      @adoption = Adoption.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def adoption_params
      params.require(:adoption).permit(:user_id, :pet_id)
    end
end
