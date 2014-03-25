class MCategoryTypesController < ApplicationController  
  def index
    @category_types = M::CategoryType.all
  end
end
