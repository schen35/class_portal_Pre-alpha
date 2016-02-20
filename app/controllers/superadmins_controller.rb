class SuperadminsController < UsersController
<<<<<<< HEAD
=======
  before_action :authenticate_user!
>>>>>>> refs/remotes/origin/schen35
  def destroy
    @user = User.find(params[:id])
    @user.destroy
    respond_to do |format|
      format.html { redirect_to users_path, notice: 'This user was successfully destroyed.' }
      format.json { head :no_content }
    end
  end
end
