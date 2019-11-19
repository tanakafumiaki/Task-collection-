class Task < ApplicationRecord
  validates :title, presence: true
  validates :list_name, presence: true
end
