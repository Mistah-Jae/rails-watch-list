class Movie < ApplicationRecord
  validates :title, presence: true, uniqueness: true
  has_many :bookmarks
  before_destroy :bookmark?

  private

  def bookmark?
    this.bookmarks.empty?
  end
end
