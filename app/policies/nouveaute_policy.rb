class NouveautePolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end

# def index?
#     true
#   end

#   def create?
#     true
#   end

#   def destroy?
#     true
#   end

  end
end
