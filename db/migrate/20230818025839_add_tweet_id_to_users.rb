class AddTweetIdToUsers < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :tweet_id, :integer
  end
end
