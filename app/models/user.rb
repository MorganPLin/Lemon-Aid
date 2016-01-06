class User < ActiveRecord::Base
  has_many :comments
  has_and_belongs_to_many :ingredients
  has_many :recipes

  has_secure_password


  validates :email, presence: true, uniqueness: { case_sensitive: false}
  validates :handle, presence: true, uniqueness: { case_sensitive: false}

end
