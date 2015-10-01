class SearchUrlController < ApplicationController
  def index
    @search_url=SearchUrl.all
  end
end
