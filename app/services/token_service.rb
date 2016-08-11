class TokenService < BaseService

	def factory_token(params)
		@token = Token.new(params)
	end

	def create_token_to_app(params={})
		binding.pry
		app = App.find_by(id: params[:app_id])
		app.tokens << factory_token({ app_id: app.id, temporary: params[:temporary] })
		app.save
		@token
	end

end