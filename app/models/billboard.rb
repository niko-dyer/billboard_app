class Billboard < ApplicationRecord
    has_many :artists, dependent: :destroy
    has_many :songs, :through => :artists
end
