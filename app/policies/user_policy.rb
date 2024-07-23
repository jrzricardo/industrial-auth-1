class UserPolicy
  attr_reader :current_user, :user

  def initialize(current_user, user)
    @current_user = current_user
    @user = user
  end

  def create?
    true
  end

  def new?
    true
  end

  def index?
    false
  end

  def edit?
    user == current_user
  end
  
  def update?
    true
  end

  def show?
    true
  end

  def destroy?
    user == current_user
  end

  def followers?
    user == current_user
  end

  def liked?
    user == current_user
  end

  def dicover?
    user == current_user
  end

  def feed?
    user == current_user
  end
end
