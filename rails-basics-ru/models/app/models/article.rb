class Article < ApplicationRecord
  scope :title_mrs, -> { arcticles.where("title like '%Mrs%'") }
end
