class CreateClients < ActiveRecord::Migration[6.0]
  def change
    create_table :clients do |t|
      t.string :name
      t.boolean :business
      t.integer :size
      t.string :industry
      t.integer :company_id

      t.timestamps
    end
  end
end
