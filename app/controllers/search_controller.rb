class SearchController < ApplicationController
  def index
    @evidence=EvidenceItem.all
  end
end
