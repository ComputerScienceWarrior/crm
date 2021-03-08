class RemovePricePlanFromCompany < ActiveRecord::Migration[6.0]
  def change
    remove_column :companies, :price_plan, :string
  end
end
