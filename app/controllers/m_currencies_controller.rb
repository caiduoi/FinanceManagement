class MCurrenciesController < ApplicationController  
  
  before_action :signed_in
  
  def index
    @search = M::Currency.search params[:q]
    @currencies = @search.result
  end

  def signed_in
    redirect_to root_path unless signed_in?
  end 
  
end
