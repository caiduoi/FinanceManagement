class CreateMCurrencies < ActiveRecord::Migration
  def change
    create_table :m_currencies do |t|
      t.string :name
      t.string :code
      t.float :balance

      t.timestamps
    end
  end
end
