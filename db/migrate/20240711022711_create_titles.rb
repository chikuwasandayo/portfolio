class CreateTitles < ActiveRecord::Migration[5.2]
  def change
    create_table :titles do |t|
      t.string :tname
      t.date :tdate

      t.timestamps
    end
  end
end
