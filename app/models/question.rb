class Question < ApplicationRecord
  belongs_to :exam

  validates :content, presence: true
  validates :option_a, :option_b, :option_c, :option_d, presence: true
  validates :correct_answer, presence: true, inclusion: { in: %w(option_a option_b option_c option_d) }
end
