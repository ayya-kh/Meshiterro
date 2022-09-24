class PostImage < ApplicationRecord
  has_one_attached :image
  #1:複数 の「複数」側にあたるモデルに、belongs_to を記載する必要がある
  belongs_to :user
  
  def get_image
    unless image.attached?
      file_path = Rails.root.join('app/assets/images/no_image.jpg')
      image.attach(io: File.open(file_path), filename: 'default-image.jpg', content_type: 'image/jpeg')
    end
    image
  end
end
