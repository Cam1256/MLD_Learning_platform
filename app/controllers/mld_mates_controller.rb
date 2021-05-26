class MldMatesController < ApplicationController
  before_action :set_mld_mate, only: %i[ show edit update destroy ]
  before_action :authenticate_user!, except: [:index, :show]
  before_action :correct_user, only: [:edit, :update, :destroy]
  # GET /mld_mates or /mld_mates.json
  def index
    @mld_mates = MldMate.all
  end

  # GET /mld_mates/1 or /mld_mates/1.json
  def show
  end

  # GET /mld_mates/new
  def new
    #@mld_mate = MldMate.new
    @mld_mate = current_user.mld_mates.build
  end

  # GET /mld_mates/1/edit
  def edit
  end

  # POST /mld_mates or /mld_mates.json
  def create
    #@mld_mate = MldMate.new(mld_mate_params)
    @mld_mate = current_user.mld_mates.build(mld_mate_params)

    respond_to do |format|
      if @mld_mate.save
        format.html { redirect_to @mld_mate, notice: "Mld mate was successfully created." }
        format.json { render :show, status: :created, location: @mld_mate }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @mld_mate.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /mld_mates/1 or /mld_mates/1.json
  def update
    respond_to do |format|
      if @mld_mate.update(mld_mate_params)
        format.html { redirect_to @mld_mate, notice: "Mld mate was successfully updated." }
        format.json { render :show, status: :ok, location: @mld_mate }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @mld_mate.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /mld_mates/1 or /mld_mates/1.json
  def destroy
    @mld_mate.destroy
    respond_to do |format|
      format.html { redirect_to mld_mates_url, notice: "Mld mate was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  def correct_user
    @mld_mate = current_user.mld_mates.find_by(id: params[:id])
    redirect_to mld_mates_path, notice: "Not authorized to edit this Mld_mate" if @mld_mate.nil?
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_mld_mate
      @mld_mate = MldMate.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def mld_mate_params
      params.require(:mld_mate).permit(:first_name, :last_name, :email, :whatsapp, :github, :user_id)
    end
end
