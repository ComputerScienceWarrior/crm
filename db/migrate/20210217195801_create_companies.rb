class CreateCompanies < ActiveRecord::Migration[6.0]
  def change
    create_table :companies do |t|
      t.string :name
      t.string :industry
      t.integer :size
      t.string :price_plan

      t.timestamps
    end
  end
end
