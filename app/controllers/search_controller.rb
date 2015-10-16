class SearchController < ApplicationController

  def index
    @SEARCH_PREDICATES = [
      :eq,
      :not_eq,
      :cont,
      :not_cont,
      :start,
      :not_start,
      :end,
      :not_end,
    ]
    @SEARCH_ASSOCIATIONS = [
      :software_engineering_methods,
      :software_engineering_methodologies,
      :evidence_source,
      :evidence_source_participant_types,
      :evidence_source_bibtex_tags,
      :evidence_source_bibtex_type,
    ]
    @search_params = params[:q]
    @search_evidence_item = EvidenceItem.ransack(@search_params)
    @search_evidence_item.build_condition

    if params.count < 3
      render 'search_form'
      return
    end

    @saved_search_result = save_from_form(params, :saved_search_result,
                                          SavedSearchResult, :name)
    unless @saved_search_result.id.nil?
      redirect_to :back
      return
    end

    @saved_search_query = save_from_form(params, :saved_search_query,
                                          SavedSearchQuery, :name)
    unless @saved_search_query.id.nil?
      redirect_to :back
      return
    end

    @evidence_items = @search_evidence_item.result(distinct: true)
    render 'results'
    return
  end

  def save_from_form(params, params_key, model_klass,
                     model_friendly_id_attribute)
    if params[params_key]
      instance = model_klass.new(params[params_key])
      if instance.save
        flash[:success] = "#{model_klass.model_name.human} " \
          "'#{instance.send model_friendly_id_attribute}' stored successfully."
      end
    else
      instance = model_klass.new
    end
    return instance
  end

end
