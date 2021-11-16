class Ability
  include CanCan::Ability

  def initialize(user)
    user ||= User.new
    if user.role == 'admin'
      can :manage, :all
    else
      can :read, :all
      can :destroy, Food do |food|
        food.user.id == user.id
      end

      can :destroy, Recipe do |recipe|
        recipe.user.id == user.id
      end
    end
  end
end
