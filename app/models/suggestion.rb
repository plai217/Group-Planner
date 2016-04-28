class Suggestion < ActiveRecord::Base
  belongs_to :plan
  has_many :votes

  def update_votes
    binding.pry
    self.plan.users.each do |user|
      self.votes.create(:user => user)  
    end
  end

  def percent_confirmed?
     (self.votes.select(&:confirm).size.to_f / self.votes.size.to_f)*100
  end

end
