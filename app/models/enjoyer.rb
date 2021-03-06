class Enjoyer < ActiveRecord::Base
  has_many :questions
  has_many :answers
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
