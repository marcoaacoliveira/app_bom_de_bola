class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :email
      t.string :password
      t.date :born_at
      t.boolean :admin

      t.timestamps
    end
  end
end
