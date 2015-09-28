class PagesController < ApplicationController
  def index
      @search=EvidenceItem.ransack(params[:q])
  end
end
