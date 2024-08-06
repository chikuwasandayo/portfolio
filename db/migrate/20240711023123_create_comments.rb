class CreateComments < ActiveRecord::Migration[5.2]
  def change
    create_table :comments do |t|
      t.string :massage
      t.date :cdate

      t.timestamps
    end
  end
end
