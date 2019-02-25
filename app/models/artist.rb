class Artist < ApplicationRecord
  belongs_to :billboard, optional: true
  has_many :songs
end
