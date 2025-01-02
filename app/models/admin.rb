require_dependency 'user_mailer'
class Admin < ApplicationRecord
  after_create :send_welcome_email, if: :persisted?
  has_many :exams, dependent: :destroy
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable


  private

  def send_welcome_email
    AdminMailer.welcome_email(self).deliver_now # Pass the 'self' (current admin instance) to the mailer
  end
end
