class Admin::MCurrenciesController < ApplicationController  
  
  before_action :signed_in
  before_action :admin
  
  def new
    
  end
  
  def create
    
  end
  
  def index
    @search = M::Currency.search params[:q]
    @currencies = @search.result
    respond_to do |format|
      format.html
      format.csv { send_data @currencies.to_csv }
    end
  end

  def edit
    
  end
  
  def update
    
  end
  
  def destroy
    
  end
  
  # private
  def import
    M::Currency.import params[:file]
    redirect_to root_url, notice: "Currency imported."
  end
  
  def signed_in
    redirect_to root_path unless signed_in?
  end 
    
  def admin
    redirect_to root_path unless admin?
  end
  
end


