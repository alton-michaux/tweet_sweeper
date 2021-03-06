# frozen_string_literal: true

class Profile < ApplicationRecord
  belongs_to :user
  has_many :tweets, dependent: :destroy
end
