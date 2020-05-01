class TvShow < ApplicationRecord
  validates_presence_of :name

  belongs_to :category
  belongs_to :channel
end
