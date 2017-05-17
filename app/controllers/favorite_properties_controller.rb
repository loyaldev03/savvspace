class FavoritePropertiesController < ApplicationController
  before_action :authenticate_user!

  def index
    @profile = current_user.profile
    @favorite = true
    @property_search = PropertySearch.find_or_create_by(profile: @profile, mls_server: MlsServer.first, favorite: @favorite)
  end
end
