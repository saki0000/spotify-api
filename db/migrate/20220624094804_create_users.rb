class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      t.text :uid
      t.text :name
      t.text :avatar

      t.timestamps
    end
  end
end
