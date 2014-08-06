class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :rememberable, :trackable, :validatable
  has_attachment  :avatar, accept: [:gif, :jpg, :png]
  has_attachments :photos, maximum: 10
end
