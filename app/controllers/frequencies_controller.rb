class FrequenciesController < ApplicationController
	def index
		@test = Frequency.test
	end

	def create
		@freq = Frequency.new(params[:input_text])
		respond_to do |format|
			format.js
		end
	end

	def check
		respond_to do |format|
			format.js
		end
	end
end
