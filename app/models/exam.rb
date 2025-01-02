class Exam < ApplicationRecord
  belongs_to :admin
  has_many :questions, dependent: :destroy
end
