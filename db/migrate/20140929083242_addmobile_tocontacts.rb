class AddmobileTocontacts < ActiveRecord::Migration
  def change
add_column :contacts, :mobile, :integer
  end
end
