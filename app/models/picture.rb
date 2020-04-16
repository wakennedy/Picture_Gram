class Picture < ApplicationRecord
    belongs_to :user
    has_many :picture_tags
    has_many :tags, through: :picture_tags
    accepts_nested_attributes_for :tags

    def self.sorted_by_most_recent
        @sorted = Picture.all.sort_by{|pic| pic.created_at}.reverse
    end
end
