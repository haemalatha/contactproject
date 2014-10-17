class Contact < ActiveRecord::Base
  belongs_to :user
  has_attached_file :photo, :styles => {:small => "150x150>"}
  validates :name, :mobile, :user_id, presence: true
  validates_associated :user

  validates :email, format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i }, presence: true
  validates_attachment_content_type :photo, :content_type => /^image\/(png|gif|jpeg)/
end
