class SearchController < ApplicationController
  def index
    @evidence_items=EvidenceItem.all
  end
end
