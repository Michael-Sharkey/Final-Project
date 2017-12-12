class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :musclegroups
  has_many :muscles
  has_many :training_sessions
  has_many :worksets, through: :training_sessions

end
