class Project < ApplicationRecord
  has_many :time_entries
  validates :name, presence: true, uniqueness: true
  validates :name, length: {maximum: 30}
  validates :name, format: {with: /(\w\s)+/}
end
