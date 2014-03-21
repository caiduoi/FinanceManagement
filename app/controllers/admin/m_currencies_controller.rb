class Admin::MCurrenciesController < ApplicationController  
  def index
    @currencies = M::Currency.all
  end
end
