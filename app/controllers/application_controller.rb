class ApplicationController < ActionController::Base
  protect_from_forgery

  include SessionsHelper
	before_filter :set_locale
	before_filter :signed_in_user

	def set_locale
  		I18n.locale = params[:locale] || I18n.default_locale
	end

	def default_url_options(options={})
	  logger.debug "default_url_options is passed options: #{options.inspect}\n"
	  { :locale => I18n.locale }
	end

	private
	    def signed_in_user
	      redirect_to signin_url, notice: "Please sign in" unless signed_in?
	    end 
end
