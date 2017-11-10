class MoviesController < ApplicationController
  def query
    result = Schema.execute params[:query]
    Rails.logger.fatal result.inspect
    render json: result
  end
end