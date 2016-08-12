class Admin::TokensController < ApplicationController
  before_action :set_token, only: [:show, :edit, :update, :destroy]

  # GET /admin/tokens
  # GET /admin/tokens.json
  def index
    @tokens = Token.all
  end

  # POST /admin/tokens
  # POST /admin/tokens.json
  def create
    @token = Token.new(token_params)

    respond_to do |format|
      if @token.save
        format.html { redirect_to edit_admin_app_url(@token.tokenable), notice: 'Token was successfully created.' }
        format.json { render :show, status: :created, location: @token }
      else
        format.html { redirect_to @token.tokenable, error: 'Token was not created.' }
        format.json { render json: @token.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /admin/tokens/1
  # PATCH/PUT /admin/tokens/1.json
  def update
    @token.generate_secret_key
    respond_to do |format|
      if @token.update(token_params)
        format.html { redirect_to edit_admin_app_url(@token.tokenable), notice: 'Token was successfully updated.' }
        format.json { render :show, status: :ok, location: @token }
      else
        format.html { render :edit }
        format.json { render json: @token.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /admin/tokens/1
  # DELETE /admin/tokens/1.json
  def destroy
    @token.destroy
    respond_to do |format|
      format.html { redirect_to admin_tokens_url, notice: 'Token was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_token
      @token = Token.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def token_params
      params.require(:token).permit(:secret_key, :temporary, :tokenable_id, :tokenable_type)
    end
end
