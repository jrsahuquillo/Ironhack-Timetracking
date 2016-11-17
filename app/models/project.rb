class Project < ApplicationRecord
  has_many :time_entries
  validates :name, presence: true, uniqueness: true
  validates :name, length: {maximum: 30}
  validates :name, format: {with: /(\w\s)+/}

  def self.clean_old(date = 1.week.ago)
    where( 'created_at < ?', date ).destroy_all
  end

end
