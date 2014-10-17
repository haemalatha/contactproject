class Contact < ActiveRecord::Base

  has_attached_file :photo, :styles => {:small => "150x150>"}
  validates :name, presence: true
   validates :email, presence:true
              
validates :email, format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i, on: :create }
  validates_attachment_content_type :photo, :content_type => /^image\/(png|gif|jpeg)/
  validates :mobile, presence: true

  def self.get_contact( id, current_user_id )
    Contact.where( id: id, user_id: current_user_id).first
  end
  belongs_to :user




end
    

  



