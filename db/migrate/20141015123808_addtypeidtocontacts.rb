class Addtypeidtocontacts < ActiveRecord::Migration
  def change
    add_column :contacts, :type_id, :integer
  end
end
