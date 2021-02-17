class CreateClientContacts < ActiveRecord::Migration[6.0]
  def change
    create_table :client_contacts do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :phone
      t.string :title
      t.integer :client_id

      t.timestamps
    end
  end
end
