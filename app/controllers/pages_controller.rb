class PagesController < ApplicationController
  def index
      # legacy - to display all the content in EvidenceItem
    @item=EvidenceItem.all
      # legacy end
  end
end
