class AlphaBlogsController < ApplicationController
  before_action :set_alpha_blog, only: %i[ show edit update destroy ]

  # GET /alpha_blogs or /alpha_blogs.json
  def index
    @alpha_blogs = AlphaBlog.all
  end

  # GET /alpha_blogs/1 or /alpha_blogs/1.json
  def show
    
  end

  # GET /alpha_blogs/new
  def new
    @alpha_blog = AlphaBlog.new
  end

  # GET /alpha_blogs/1/edit
  def edit
    
  end

  # POST /alpha_blogs or /alpha_blogs.json
  def create
    @alpha_blog = AlphaBlog.new(alpha_blog_params)

    respond_to do |format|
      if @alpha_blog.save
        format.html { redirect_to alpha_blog_url(@alpha_blog), notice: "Alpha blog was successfully created." }
        format.json { render :show, status: :created, location: @alpha_blog }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @alpha_blog.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /alpha_blogs/1 or /alpha_blogs/1.json
  def update
    respond_to do |format|
      if @alpha_blog.update(alpha_blog_params)
        format.html { redirect_to alpha_blog_url(@alpha_blog), notice: "Alpha blog was successfully updated." }
        format.json { render :show, status: :ok, location: @alpha_blog }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @alpha_blog.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /alpha_blogs/1 or /alpha_blogs/1.json
  def destroy
    @alpha_blog.destroy!

    respond_to do |format|
      format.html { redirect_to alpha_blogs_url, notice: "Alpha blog was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_alpha_blog
      @alpha_blog = AlphaBlog.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def alpha_blog_params
      params.require(:alpha_blog).permit(:title, :description)
    end
end
