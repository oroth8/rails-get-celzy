class LessonPolicy < ApplicationPolicy
    class Scope < Scope
      def resolve
        scope.all
      end
    end
  
    def edit? 
      @user.has_role?(:admin) || @record.course.user_id == @user.id
    end
  
    def update? 
      @user.has_role?(:admin) || @record.course.user_id == @user.id
    end
  
    def create? 
    @record.course.user_id == @user.id
    end
    def destroy? 
      @user.has_role? :admin
    end
    def new? 
      @user.has_role?(:admin || :teacher || @record.course.user_id == @user.id)
    end
  end
  