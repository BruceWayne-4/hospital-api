class User < ApplicationRecord
  extend Enumerize

  enumerize :gender, in: [:male, :female]

  before_create { generate_token(:auth_token) }

  protected

  # 在每次生成admin时添加auth_token
  def generate_token(column)
    begin
      self[column] = SecureRandom.urlsafe_base64
    end while User.exists?(column => self[column])
  end
end

