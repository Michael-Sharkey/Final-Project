class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :training_sessions
  has_many :worksets

  accepts_nested_attributes_for :worksets


end
