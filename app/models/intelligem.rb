class Intelligem < ApplicationRecord
  validates :link, url: true
end
