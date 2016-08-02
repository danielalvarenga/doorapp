class Admin::TokenController < ApplicationController

	respond_to :json

  def create
  	@token = Token.new(token_params)

	  if @token.save
	    render :show, status: :created, location: @token }
	  else
	    render json: @token.errors, status: :unprocessable_entity }
	  end
  end

  def update
  end

  def delete
  end

  private 
  	# Never trust parameters from the scary internet, only allow the white list through.
    def token_params
      params.require(:token).permit(:app_id)
    end
end
