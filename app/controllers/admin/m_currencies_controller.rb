class Admin::MCurrenciesController < ApplicationController  
  
  def index
    @search = M::Currency.search(params[:q])
    @currencies = @search.result
  end
  
end
