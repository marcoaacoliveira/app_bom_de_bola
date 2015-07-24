class CreateMatches < ActiveRecord::Migration
  def change
    create_table :matches do |t|
      t.references :team_id1, index: true
      t.references :team_id2, index: true
      t.date :date
      t.references :field_id, index: true

      t.timestamps
    end
  end
end
