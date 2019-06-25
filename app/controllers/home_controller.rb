# frozen_string_literal: true
# The is responsible for getting search results
class HomeController < ApplicationController
  def search_result
    search_results = GoogleCustomSearchApi.search(params[:keyword])
    @results = []
    search_results['items'].each do |item|
      @results << item
    end
  end
end
