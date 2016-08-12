class Admin::AppsController < Admin::AdminBaseController
  before_action :set_app, only: [:edit, :update, :destroy]

  # GET /admin/apps
  # GET /admin/apps.json
  def index
    @apps = App.all
  end

  # GET /admin/apps/new
  def new
    @app = App.new
  end

  # GET /admin/apps/1/edit
  def edit
  end

  # POST /admin/apps
  # POST /admin/apps.json
  def create
    @app = App.new(app_params)

    respond_to do |format|
      if @app.save
        format.html { redirect_to edit_admin_app_url(@app), notice: 'App was successfully created.' }
        format.json { render :show, status: :created, location: @app }
      else
        format.html { render :new }
        format.json { render json: @app.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /admin/apps/1
  # PATCH/PUT /admin/apps/1.json
  def update
    respond_to do |format|
      if @app.update(app_params)
        format.html { redirect_to edit_admin_app_url(@app), notice: 'App was successfully updated.' }
        format.json { render :show, status: :ok, location: @app }
      else
        format.html { render :edit }
        format.json { render json: @app.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /admin/apps/1
  # DELETE /admin/apps/1.json
  def destroy
    @app.destroy
    respond_to do |format|
      format.html { redirect_to admin_apps_url, notice: 'App was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_app
      @app = App.find(params[:id])
      @app.build_token(temporary: false) unless @app.token.present?
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def app_params
      params.require(:app).permit(:name, :description)
    end
end
