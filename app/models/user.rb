# frozen_string_literal: true

class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  validates :name, presence: true, length: { maximum: 50 }

  after_create :set_admin

  private

  def set_admin
    if User.count == 1
      User.first.update_attribute(:is_admin, true)
    else
      true
    end
  end
end
