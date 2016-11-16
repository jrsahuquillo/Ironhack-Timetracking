class TimeEntry < ApplicationRecord
  belongs_to :project
  validates :hours, presence: true, numericality: true
  validates :minutes, presence: true, numericality: true
  validates :date, presence: true
end
