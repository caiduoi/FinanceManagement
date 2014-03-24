class Admin::MCurrenciesController < ApplicationController  
  
  def index
    @search = M::Currency.search params[:q]
    @currencies = @search.result
    respond_to do |format|
      format.html
      format.csv { send_data @currencies.to_csv }
    end
  end
  
  # private
  def import
    M::Currency.import params[:file]
    redirect_to root_url, notice: "Currency imported."
  end
  
end
