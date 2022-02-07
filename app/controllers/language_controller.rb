class LanguageController < ApplicationController
    def save_language
        session[:locale] = params[:locale]
        redirect_to :root
    end
end
