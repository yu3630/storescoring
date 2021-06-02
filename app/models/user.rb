class User < ApplicationRecord
  VALID_PASSWORD_REGEX = /\A(?=.*?[a-z])(?=.*?\d)[a-z\d]{8,15}+\z/i
  validates :number, presence: true, length: { maximum: 7, message: 'は7文字の社員番号で入力をお願いします' }
  validates :password, presence: true,
                       format: { with: VALID_PASSWORD_REGEX, message: 'は半角8〜15文字で英大文字・小文字・数字それぞれ１文字以上含む必要があります' }, on: :create
  validates :name, presence: true, length: { maximum: 15 }
  #  belongs_toで処理していれば、バリデーションは不要。必須で行われている
  # validates :area_id,  presence: true
  # validates :role_id, presence: true
  # validates :store_id, presence: true

  has_secure_password

  has_many :skill_users
  has_many :skills, through: :skill_users
  belongs_to :area, optional: true
  belongs_to :store, optional: true
  belongs_to :role
end
