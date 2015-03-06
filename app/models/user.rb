class User < ActiveRecord::Base
  include BCrypt

  has_many   :takes, foreign_key: "taker_id"
  has_many   :responses, through: :takes, source: :taker
  has_many   :surveys, foreign_key: "maker_id"

  def password
    @password ||= Password.new(password_hash)
  end

  def password=(new_password)
    @password = Password.create(new_password)
    self.password_hash = @password
  end
end
