class CommentPolicy < ApplicationPolicy
  attr_reader :user, :comment

  def initialize(user, comment)
    @user = user
    @comment = comment
  end

  def index?
    false
  end

  def show?
    false
  end

  def new?
    false
  end

  def edit?
    false
  end

  def create?
    true
  end

  def update?
    user == comment.owner
  end

  def destroy?
    user == comment.owner
  end

end
