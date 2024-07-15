class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_and_belongs_to_many :roles

  # before_save :assign_role

  # def assign_role
  #   self.role = Role.find_by name: 'Regular' if role.nil?
  # end

  # def admin?
  #   role.name == 'Admin'
  # end

  # def seller?
  #   role.name == 'Seller'
  # end

  # def regular?
  #   role.name == 'Regular'
  # end
end
