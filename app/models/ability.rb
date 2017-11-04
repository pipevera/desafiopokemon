class Ability
  include CanCan::Ability

  def initialize(user)
    user ||= User.new(role: 0) # guest user (not logged in)
    if user.admin?
      can :manage, :all
    elsif user.basic?
      can :level_up, Catch, {user_id: user.id}
      can :add_pokemon, Catch
      can :read, [Pokemon, Catch]
    else
      can :read, Pokemon
    end

  end
end
