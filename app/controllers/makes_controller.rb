class MakesController < ApplicationController
  before_action :authenticate_user!
  before_action :set_make, only: %i[show edit update destroy]
  before_action :authorize_user!, only: %i[edit update destroy]

  def index
    @makes = Make.order(created_at: :desc)
  end

  def show
  end

  def new
    @make = Make.new
    @make.build_first_part
    @make.build_second_part
  end

  def create
    @make = Make.new(make_params)
    @make.user = current_user

    if params[:make][:first_part_attributes][:content].present?
      @make.build_first_part(content: params[:make][:first_part_attributes][:content], user: current_user)
    end

    if params[:make][:second_part_attributes][:content].present?
      @make.build_second_part(content: params[:make][:second_part_attributes][:content], user: current_user)
    end

    if @make.save
      redirect_to @make, notice: 'Make was successfully created.'
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @make.update(make_params)
      redirect_to @make, notice: 'Make was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    @make.destroy
    redirect_to makes_path, notice: 'Make was successfully destroyed.'
  end

  def likes
    @like_makes = current_user.like_makes.includes(:user).order(created_at: :desc)
  end

  private

  def set_make
    @make = Make.find(params[:id])
  end

  def authorize_user!
    unless current_user == @make.user || current_user == @make.first_part&.user || current_user == @make.second_part&.user
      redirect_to makes_path, alert: 'You are not authorized to perform this action.'
    end
  end

  def make_params
    params.require(:make).permit(
      first_part_attributes: %i[id content],
      second_part_attributes: %i[id content]
    )
  end
end
