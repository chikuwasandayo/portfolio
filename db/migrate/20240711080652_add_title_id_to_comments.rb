class AddTitleIdToComments < ActiveRecord::Migration[5.2]
  def change
    add_reference :comments, :title, foreign_key: true
  end
end
