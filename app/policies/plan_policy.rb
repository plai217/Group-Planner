class PlanPolicy < ApplicationPolicy
  def show?
    user.admin? || user.owner? || record.try(:user) == user
  end  
end