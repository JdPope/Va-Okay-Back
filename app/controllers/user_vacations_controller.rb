class UserVacationsController < ApplicationController
  before_action :set_user_vacation, only: [:show, :update, :destroy]

  # GET /user_vacations
  def index
    @user_vacations = UserVacation.all

    render json: @user_vacations
  end

  # GET /user_vacations/1
  def show
    render json: @user_vacation
  end

  # POST /user_vacations
  def create
    @user_vacation = UserVacation.new(user_vacation_params)

    if @user_vacation.save
      render json: @user_vacation, status: :created, location: @user_vacation
    else
      render json: @user_vacation.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /user_vacations/1
  def update
    if @user_vacation.update(user_vacation_params)
      render json: @user_vacation
    else
      render json: @user_vacation.errors, status: :unprocessable_entity
    end
  end

  # DELETE /user_vacations/1
  def destroy
    @user_vacation.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user_vacation
      @user_vacation = UserVacation.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def user_vacation_params
      params.require(:user_vacation).permit(:user_id, :vacation_id)
    end
end
