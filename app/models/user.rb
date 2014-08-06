class User < ActiveRecord::Base
  has_attachment  :avatar, accept: [:gif, :jpg, :png]
  has_attachments :photos, maximum: 10

  validates :avatar, presence: true
end
