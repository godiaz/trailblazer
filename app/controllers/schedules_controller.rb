class SchedulesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index]
  before_action :set_schedule, only: [:show, :edit, :update, :destroy]

  def index
    @schedules = Schedules.all
  end

  def show
  end

  def new
    @schedule = Schedule.new
  end

  def create
    @schedule = Schedule.new(schedule_params)
    @schedule.user = current_user
    if @schedule.save
      redirect_to schedule_path
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @schedule.update(schedule_params)
      redirect_to schedule_path(@schedule)
    else
      flash[:error] = 'Didn\'t save'
    end
  end

  def destroy
    @schedule.destroy
    redirect_to schedules_path
  end

  private

  def set_schedule
    @schedule = Schedule.find(params[:id])
  end

  def schedule_params
    params.require(:schedule).permit( :title, :description )
  end
end
