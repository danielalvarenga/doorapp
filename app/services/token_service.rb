class TokenService < BaseService

	def build_token(model, temporary=true)
		@token = Token.new("#{model.class_name.downcase}_id": model.id, temporary: temporary)
	end

	def create_token(model, temporary=true)
		self.build_token(model, temporary)
		@token.save ? @token : nil
	end

end