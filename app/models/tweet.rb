# frozen_string_literal: true

class Tweet < ApplicationRecord
  belongs_to :profile
  has_one :user, through: :profile
end
