class GoalsController < ApplicationController
  before_action :authenticate_user!, except: [:index]
  before_action :set_goal, only: [:show, :edit, :update, :set_duration, :archiv]

  # GET /goals
  def index
    @goals = Goal.where(deleted: false, user_id: current_user)
  end

  # GET /goals/1
  def show
  end

  # GET /goals/new
  def new
    @goal = Goal.new
  end

  # GET /goals/1/edit
  def edit
  end

  def archiv
  end

  # POST /goals
  def create
    @goal = current_user.goals.build(goal_params)

    respond_to do |format|
      if @goal.save
        format.html {redirect_to @goal, notice: 'Goal was successfully created.'}
      else
        format.html {render :new}
      end
    end
  end

  # PATCH/PUT /goals/1
  def update
    respond_to do |format|
      if @goal.update(goal_params)
        format.html {redirect_to @goal, notice: 'Goal was successfully updated.'}
      else
        format.html {render :edit}
      end
    end
  end

  def set_duration
    respond_to do |format|
      if @goal.update(goal_params)
        @goal.update(deleted: true)
        format.html {redirect_to goals_path, notice: 'act_duration was successfully updated.'}
      else
        format.html {redirect_to archiv_goal_path(@goal)}
      end
    end
    # end
  end

  # DELETE /goals/1
  def destroy
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_goal
    @goal = Goal.find(params[:id]) # if params[:id].present?
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def goal_params
    params.require(:goal).permit(:act_duration, :user_id, :id, :title, :opt_assessment, :pes_assessment, :nom_rating, :exp_duration, :pos_deviation)
  end

  def goal_params1
    # params.fetch(:goal, {}).permit(:act_duration)
    # params.require(:goal).permit(:act_duration)
  end

end
