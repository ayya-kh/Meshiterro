class PostImage < ApplicationRecord
  has_one_attached :image
  #1:複数 の「複数」側にあたるモデルに、belongs_to を記載する必要がある
  belongs_to :user
end
