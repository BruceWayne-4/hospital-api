class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :name
      t.string :phone
      t.string :gender
      t.integer :age
      t.string :id_card_no
      t.string :password_digest
      t.string :auth_token
      t.integer :card_id

      t.timestamps
    end
  end
end

