class SkillsUserController < ApplicationController
  before_action :require_permission
  def require_permission
    unless current_user && current_user.role_id == 2
      flash[:danger] = '権限が必要です'
      redirect_to stores_index_path
    end
  end

  def new
    @user = User.find(params[:user_id])
    @skill = @user.skills.build
  end

  def create
    @user = User.find(params[:skill][:user_id])
    # 登録するskillを取得
    skill = Skill.find(params[:skill][:skill_id])
    # 登録するskillと同じskil_category_idもつskillを全て取得
    skills = Skill.where(skill_category_id: skill.skill_category_id)
    # skillのidの配列を作る
    skill_range = []
    skills.each do |s|
      skill_range.push(s.id)
    end
    # すでに登録されていればそのデータを取得する　find_byは複数条件で取得できる
    @skill_user = SkillUser.find_by(user_id: @user.id, skill_id: skill_range)
    if !@skill_user.nil?
      @skill_user.skill_id = skill.id
      if @skill_user.save
        flash[:success] = 'スキルを更新しました'
      else
        flash[:danger] = 'スキルが更新できませんでした'
      end
    else
      @skill_user = @user.skill_users.build(skill_params)
      if @skill_user.save
        flash[:success] = 'スキルを登録しました'
      else
        flash[:danger] = 'スキルが登録できませんでした'
      end
    end
    redirect_to skills_user_new_path(user_id: @user.id)
  end

  private

  def skill_params
    params.require(:skill).permit(:skill_id, :user_id)
  end
end
