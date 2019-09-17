require 'rails_helper' 
require 'simplecov'

class ApplicationController < ActionController::Base
  class AccessDenied < StandardError; end
end

class ApplicationControllerSubclass < ApplicationController

  rescue_from ApplicationController::AccessDenied, :with => :access_denied

  private
  def access_denied
    redirect_to "/401.html"
  end
end

RSpec.describe ApplicationControllerSubclass do
  controller(ApplicationControllerSubclass) do
    def index
      raise ApplicationController::AccessDenied
    end
  end

  describe "handling AccessDenied exceptions" do
    it "redirects to the /401.html page" do
      get :index
      expect(response).to redirect_to("/401.html")
    end
  end
end

RSpec.describe Api::PokemonController, type: :controller do 
  describe Api::PokemonController do 
    it { should route(:index, 'api/pokemon').to(action: :index) }
  end 

  describe Api::PokemonController do 
    it { should route(:show, 'api/pokemon/:id').to(action: :show) }
  end 
end 