class ApplicationController < ActionController::API
  include ActionController::Cookies
rescue_from ActiveRecord::RecordNotFound, with: :render_not_found

private
  def render_not_found
    render json: {error: "Record not found"}, status: :not_found
  end

end
