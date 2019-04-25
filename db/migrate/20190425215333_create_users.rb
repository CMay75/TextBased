class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :username
      t.integer :mage
      t.integer :bow
      t.integer :sword
      t.integer :shield

      t.timestamps
    end
  end
end
