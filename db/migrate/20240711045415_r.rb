class R < ActiveRecord::Migration[5.2]
  def change
    rename_column :comments, :massage, :message
    #Ex:- rename_column("admin_users", "pasword","hashed_pasword")
  end
end
