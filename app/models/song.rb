class Song < ApplicationRecord
  belongs_to :billboard, :through => :artist
  belongs_to :artist
end
