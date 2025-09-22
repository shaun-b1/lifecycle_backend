class User < ApplicationRecord
  include Devise::JWT::RevocationStrategies::JTIMatcher

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :jwt_authenticatable,
         jwt_revocation_strategy: self

  has_many :bicycles, dependent: :destroy

  validates :name, presence: true
  validates :email, presence: true,
                    format: { with: URI::MailTo::EMAIL_REGEXP },
                    uniqueness: { case_sensitive: false }
  validates :password, presence: true,
                      length: {minimum: 6},
                      if: :password_required?

  private

  def password_required?
    !presisted? || !password.nil? || !password_confirmation.nil?
  end
end
