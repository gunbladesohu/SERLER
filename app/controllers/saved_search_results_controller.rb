class SavedSearchResultsController < ApplicationController
  def index
    @saved_search_results_and_query_params = Hash[
      SavedSearchResult.all.map { |r|
        [r, evidence_item_ids_to_query_params(r.evidence_item_ids)]
      }
    ]
  end

  private
  def evidence_item_ids_to_query_params(ids)
    {
      "c"=>{
        "0"=>{
          "a"=>{
            "0"=>{
              "name"=>"id"
            }
          },
          "p"=>"in",
          "v"=>Hash[
            ids.map.with_index { |v, i|
              [String(i), Hash["value", String(v)]]
            }
          ]
        }
      }
    }
  end

end
