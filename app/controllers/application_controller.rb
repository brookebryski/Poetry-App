class ApplicationController < ActionController::API
  include ActionController::MimeResponds
  def test
    render json: { test: "success" }
  end
end
