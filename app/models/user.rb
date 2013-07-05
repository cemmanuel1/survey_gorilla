class User < ActiveRecord::Base
  attr_reader :entered_password
  validates :email, uniqueness: true
  validates :email, :password_hash, :name, presence: true

  include BCrypt

  def password
    @password ||= Password.new(password_hash)
  end

  def password=(new_password)
    @entered_password = new_password
    @password = Password.create(new_password)
    self.password_hash = @password
  end

end

