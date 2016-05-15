class CreateTteams < ActiveRecord::Migration
  def change
    create_table :tteams do |t|
      t.string :p1
      t.string :p2
      t.string :p3
      t.string :p4
      t.string :p5
      t.string :c1
      t.string :c2
      t.string :c3
      t.string :c4
      t.string :c5



      t.timestamps null: false
    end
  end
end
