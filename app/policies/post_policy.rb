class PostPolicy < ApplicationPolicy
    
    def create?
        user
    end
    
    def update?
        record.user_id == user_id
    end
    
    def destroy?
        update?
    end
    
end