class CreatePlayers < ActiveRecord::Migration
  def change
    create_table :players do |t|
      t.string :name
      t.integer :age
      t.integer :red
      t.integer :yellow
      t.references :team, index: true

      t.timestamps
    end
  end
end
