class AdduseridTocontact < ActiveRecord::Migration
  def change
  	add_column :Contacts, :user_id, :integer 
  end
end
