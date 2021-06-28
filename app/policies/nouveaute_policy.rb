class NouveautePolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end

    def resolve
      scope.all
    end

    def create?
      return true
    end

  end
end
