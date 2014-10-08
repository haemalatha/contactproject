class Contact < ActiveRecord::Base
  validates :name, presence: true
   validates :email, presence:true
              
validates :email, format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i, on: :create }
  validates :mobile, length: { minimum:10}
              

      end
    

  



