class Article < ApplicationRecord
  belongs_to :author
  belongs_to :publisher

  validates :title, presence: true
  validates :link, presence: true, uniqueness: true
  validates :published_date, presence: true
  validates :description, presence: false
  validates :language, presence: false
end