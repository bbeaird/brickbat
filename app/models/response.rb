class Response < ActiveRecord::Base
  attr_accessible :body, :post_id
  
  validates_presence_of :body

  belongs_to :post

  def up_vote
    self.votes += 1
  end

  def down_vote
    self.votes -= 1
  end
end