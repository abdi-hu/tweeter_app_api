class Tweet < ApplicationRecord
    has_many :replies
    validates :title, :content, :author, presence: true, uniqueness: true
end