class List < ApplicationRecord
  validates :name, presence: true, uniqueness: true
  has_many :bookmarks
  has_many :movies, -> { distinct }, through: :bookmarks

  before_destroy :destroy_bookmarks

  private

  def destory_bookmarks
    this.bookmarks.destroy
  end
end
