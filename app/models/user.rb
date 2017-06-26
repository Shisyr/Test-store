class User < ApplicationRecord
  VALID_EMAIL_REGEX = /\A([\w+\-]\.?)+@[a-z\d\-]+(\.[a-z]+)*\.[a-z]+\z/i
  has_secure_password
  validates :name, presence: true, length: {maximum: 30}
  validates :last_name, presence: true, length: {maximum: 30}
  validates :email, presence: true, uniqueness: {case_sensitive: false},
    format: VALID_EMAIL_REGEX
  validates :gender, presence: true
  validates :age, presence: true, length: {maximum: 2}
  validates :phone_number, presence: true, length: {maximum: 20}

end
