class FollowRequestPolicy < ApplicationPolicy
 
  attr_reader :user, :fop

  def initialize(user, fop)
    @user = user
    @fop = fop
  end

  def index?
    false
  end

  def show?
    false
  end

  def new?
    true
  end

  def edit?
    user == fop.owner
  end

  def create?
    true
  end

  def update?
    user == fop.owner
  end

  def destroy?
    user == fop.owner
  end

end
