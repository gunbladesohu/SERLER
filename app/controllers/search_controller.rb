class SearchController < ApplicationController

  def index
      @search=EvidenceItem.ransack(params[:q])
      @result=@search.result
  end

end
