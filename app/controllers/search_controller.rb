class SearchController < ApplicationController

  AVAILABLE_COLUMNS = [
    "benfit",
    "evidence_source",
  ]

  ENABLED_COLUMNS_DEFAULT = [
    "benefit",
  ]

  def index

    @search_query = params[:query]
    @evidence_items = EvidenceItem.all

    @columns_available = AVAILABLE_COLUMNS
    @columns_enabled = if params[:columns].present?
      params[:columns]
    else
      ENABLED_COLUMNS_DEFAULT
    end
  end


end
