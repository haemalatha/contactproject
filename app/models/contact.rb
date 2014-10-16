class Contact < ActiveRecord::Base
  validates :name, presence: true
   validates :email, presence:true
              
validates :email, format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i, on: :create }
  validates :mobile, presence: true

  def self.get_contact( id, current_user_id )
    Contact.where( id: id, user_id: current_user_id).first
  end

      end
    

  



