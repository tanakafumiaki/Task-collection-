class Task < ApplicationRecord
  validates :title, presence: true
  validates :list_name, presence: true
  validates :comment, presence: true
end
