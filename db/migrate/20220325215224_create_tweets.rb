# frozen_string_literal: true

class CreateTweets < ActiveRecord::Migration[5.2]
  def change
    create_table :tweets do |t|
      t.text :message
      t.date :post_date
      t.references :profile, foreign_key: true

      t.timestamps
    end
  end
end
