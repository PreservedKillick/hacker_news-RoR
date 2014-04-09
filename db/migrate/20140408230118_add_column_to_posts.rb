class AddColumnToPosts < ActiveRecord::Migration
  def change
    add_column :posts, :votes, :int
  end
end
