class CreateContacts < ActiveRecord::Migration[6.0]
  def change
    create_table :contacts do |t|
      t.string :contact_name
      t.string :company
      t.string :email_address
      t.date :contact_input_date
      t.string :comments
      t.string :category
      t.integer :user_id

      t.timestamps
    end
  end
end
