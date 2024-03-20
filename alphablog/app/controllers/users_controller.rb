class UsersController < ApplicationController
  before_action :set_user, only: %i[ show edit update destroy ]
  before_action :require_user, only: %i[ show index ]
  before_action :require_same_user, only: %i[ edit update destroy ]

  # GET /users or /users.json
  def index
  #  @alpha_blogs = @user.alpha_blogs.paginate(page: params[:page], per_page: 1)
  end

  # GET /users/1 or /users/1.json
  def show
    @users = User.paginate(page: params[:page], per_page: 5)
  end

  # GET /users/new
  def new
    @user = User.new
  end

  # GET /users/1/edit
  def edit
  end

  # POST /users or /users.json
  def create
      
       @user = User.new(user_params)

       respond_to do |format|
       if @user.save
        session[:user_id] = @user.id
        format.html { redirect_to user_url(@user), notice: "User was successfully created." }
        format.json { render :show, status: :created, location: @user }
       else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @user.errors, status: :unprocessable_entity }
       end
    end
    end

  # PATCH/PUT /users/1 or /users/1.json
  def update
    respond_to do |format|
      if @user.update(user_params)
        format.html { redirect_to user_url(@user), notice: "User was successfully updated." }
        format.json { render :show, status: :ok, location: @user }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /users/1 or /users/1.json
  def destroy

    @user.destroy!
    session[:user_id] = nil if @user == current_user
    respond_to do |format|
      format.html { redirect_to users_url, notice: "User was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  # def current_user
  #   @current_user ||= User.find(session[:user_id]) if session[:user_id]
  # end

  # def logged_in?
  #   !!current_user
  # end

  def require_same_user
      if @user != current_user && !current_user.admin? 
        flash[:notice] = "You can only edit or delete your own information "
        redirect_to @user
      end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user
      @user = User.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def user_params
      params.fetch(:user).permit(:username, :email, :password)
    end
end
