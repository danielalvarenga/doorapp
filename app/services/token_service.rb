class TokenService < BaseService

	def build_token(model_or_params, temporary=true)
		@token = Token.new( token_attributes(model_or_params, temporary) )
	end

	def create_token(model_or_params, temporary=true)
		self.build_token(model_or_params, temporary)
		@token.save ? @token : nil
	end

	def token_attributes(model_or_params, temporary=true)
		return model_or_params if model_or_params.respond_to?(:each)
		{"#{model_or_params.class_name.downcase}_id": model_or_params.id, temporary: temporary}
	end

end