class CreateAddChampionsToPlayers < ActiveRecord::Migration
  def change
    create_table :add_champions_to_players do |t|
      t.string :c1
      t.string :c2

      t.timestamps null: false
    end
  end
end
 
