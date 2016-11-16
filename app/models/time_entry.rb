class TimeEntry < ApplicationRecord
  belongs_to :project
  validates :hours, presence: true
  validates :minutes, presence: true
  validates :date, presence: true
end
