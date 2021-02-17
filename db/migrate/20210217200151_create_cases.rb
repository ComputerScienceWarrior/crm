class CreateCases < ActiveRecord::Migration[6.0]
  def change
    create_table :cases do |t|
      t.integer :number
      t.text :reason
      t.boolean :resolved
      t.integer :user_id
      t.integer :client_id

      t.timestamps
    end
  end
end
