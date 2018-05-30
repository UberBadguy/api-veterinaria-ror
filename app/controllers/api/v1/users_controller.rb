class Api::V1::UsersController < ApiController

    def show
        @user = User.find(params[:id])
    end

  def index
    @users = User.all
  end
 
  def create
    @user = User.new(user_params)
    if @user.save
      flash[:notice] = 'User added!'
      redirect_to root_path
    else
      flash[:error] = 'Failed to edit user!'
      render :new
    end
  end
 
  def update
    @user = User.find(params[:id])
    if @user.update_attributes(user_params)
      flash[:notice] = 'User updated!'
      redirect_to root_path
    else
      flash[:error] = 'Failed to edit user!'
      render :edit
    end
  end
 
  def destroy
    @user = User.find(params[:id])
    if @user.delete
      flash[:notice] = 'User deleted!'
      redirect_to root_path
    else
      flash[:error] = 'Failed to delete this user!'
      render :destroy
    end
  end
 
  # we used strong parameters for the validation of params
  def user_params
    params.require(:user).permit(:f_name, :l_name, :username, :password)
  end
end