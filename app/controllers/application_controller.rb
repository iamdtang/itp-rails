class ApplicationController < ActionController::Base
  helper FormatDateHelper
  protect_from_forgery with: :exception
end
