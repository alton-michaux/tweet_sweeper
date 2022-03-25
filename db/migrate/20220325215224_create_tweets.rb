class CreateTweets < ActiveRecord::Migration[5.2]
  def change
    create_table :tweets do |t|
      t.string :user
      t.text :message
      t.date :post_date

      t.timestamps
    end
  end
end
