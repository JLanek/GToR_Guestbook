class ApplicationController < ActionController::Base

    before_action :set_language

    def set_language
        I18n.locale = session[:locale] || I18n.default_locale
    end
end
