class PhotoPolicy < ApplicationPolicy
 
    attr_reader :user, :photo

    def initialize(user, photo)
      @user = user
      @photo = photo
    end

    def index?
      false
    end

    def show?
      user == photo.owner ||
      !photo.owner.private? ||
      photo.owner.followers.include?(user)
    end

    def new?
      true
    end

    def edit?
      user == photo.owner
    end

    def create?
      true
    end

    def update?
      user == photo.owner
    end

    def destroy?
      user == photo.owner
    end

end
