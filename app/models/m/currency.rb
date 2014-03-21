class M::Currency < ActiveRecord::Base
  
  def self.to_csv
    CSV.generate do |csv|
      csv << column_names
      all.each do |currency|
        csv << currency.attributes.values_at(*column_names)
      end
    end
  end
  
end
