class AddFutherInformationToPlayers < ActiveRecord::Migration
  def change
    add_column :players, :total_yellow, :integer
    add_column :players, :punishment, :integer
  end
end
