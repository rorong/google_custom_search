# frozen_string_literal: true

class HomeController < ApplicationController
  def search_result
    @search_title = params[:keyword]
    search_results = GoogleCustomSearchApi.search(@search_title)
    binding.pry
    @results = []
    search_results['items'].each do |item|
      @results << item
    end
  end
end
