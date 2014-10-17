class User < ActiveRecord::Base
  has_secure_password
  # validates_confirmation_of :new_password, :if=>:password_changed?
  # before_save :hash_new_password, :if=>:password_changed?
  # def password_changed?
  #   !@new_password.blank?
  # end
  # def self.authenticate(username, password)
  #   user = find_by_username(username)
  #   if user && user.password_hash == BCrypt::Engine.hash_secret(password, user.password_salt)
  #     user
  #   else
  #     nil
  #   end
  #
  # end
  has_many :contacts

end
