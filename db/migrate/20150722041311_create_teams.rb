class CreateTeams < ActiveRecord::Migration
  def change
    create_table :teams do |t|
      t.string :name, limit: 150
      t.integer :user_id
      t.integer :red
      t.integer :yellow
      t.integer :rpa
      t.string :category, limit: 50

      t.timestamps
    end
  end
end
