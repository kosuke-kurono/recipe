class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  has_many:cooks,dependent: :destroy
  has_many :favorites, dependent: :destroy
   
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  attachment :profile_image
  
  validates :username,presence:true

  # お気に入り登録の判定を行う
  def favorite_add?(cook)
    # お気に入りに登録しようとしているcook_idがカレントユーザーの中に存在するかを確認
    self.favorites.exists?(cook_id: cook.id)
  end
  
end
