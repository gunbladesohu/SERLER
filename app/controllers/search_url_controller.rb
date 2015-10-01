class SearchUrlController < ApplicationController
  def create
    @search_url=SearchUrl.new(params[:search_url])
    @search_url.save
    redirect_to search_url_index_path
  end
  
  def index
    @search_url=SearchUrl.all
  end
  

end
