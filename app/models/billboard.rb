class Billboard < ApplicationRecord
    has_many :songs, :through => :artists
    has_many :artists
end
