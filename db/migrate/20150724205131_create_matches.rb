class CreateMatches < ActiveRecord::Migration
  def change
    create_table :matches do |t|
      t.datetime :when
      t.references :team, index: true
      t.references :challenger, index: true
      t.references :where, index: true

      t.timestamps
    end
  end
end
