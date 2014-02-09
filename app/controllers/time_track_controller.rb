class TimeTrackController < UsersController
  
  def create
    @timetrack = Timetrack.new(timetrack_params)
    if @timetrack.save
      flash[:success] = "You logged your time!"
      redirect_to @user
    else
      render 'new'
    end
  end

  