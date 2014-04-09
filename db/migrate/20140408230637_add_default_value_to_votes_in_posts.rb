class AddDefaultValueToVotesInPosts < ActiveRecord::Migration
  def change
    change_column :posts, :votes, :int, :default => 0
  end
end
