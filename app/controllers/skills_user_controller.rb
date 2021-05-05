class SkillsUserController < ApplicationController
    def index
        user = User.find(params[:user_id])
        @skill = user.skills.build
    end
    
    def create
        @user = User.find(params[:skill][:user_id])
        @skill_user = @user.skill_users.build(skill_params)
        if @skill_user.save
            flash[:success] = "スキルを登録しました"
            redirect_to skills_user_index_path(user_id: @user.id)
        else
            flash[:danger] = "スキルが登録できませんでした"
            redirect_to skills_user_index_path(user_id: @user.id)
        end
    end
    
    private
    def skill_params
        params.require(:skill).permit(:skill_id, :user_id)
    end
end