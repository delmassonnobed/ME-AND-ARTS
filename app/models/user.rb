class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :sounds, dependent: :destroy
  has_many :auctions, dependent: :destroy
  has_many :followings, dependent: :destroy

  validates :email, presence: true
  validates :encrypted_password, presence: true
end
