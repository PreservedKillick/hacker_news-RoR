class Post < ActiveRecord::Base
  belongs_to :user
  validates :title, :presence => true

  def upvote
    votes=+ 1
    update(votes: votes)
  end
end
