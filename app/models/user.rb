class User < ApplicationRecord
  after_initialize :set_default_role, if: :new_record?

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  enum role: [:user, :admin]

  has_one :information, dependent: :destroy
  has_one :job, dependent: :destroy

  def set_default_role
    self.role ||= :user
  end

end
