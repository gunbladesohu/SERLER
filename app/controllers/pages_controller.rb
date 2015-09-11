class PagesController < ApplicationController
  def index
    @item=EvidenceItem.all
  end
end
