class Store < ApplicationRecord
    has_many :users
    belongs_to :area
    # def self.search(keyword)
    #     where([" name like?",  "%#{keyword}%"])
    # end
    
    def skillAverage
        # スキルの合計点をゼロに初期化
        sum = 0;
        # そのショップの店員を一人ずつ取得
        users.each do |user|
            # 店員のスキルを一つずつ取得
            user.skill_users.each do |skill_user|
                # スキルポイントを加算
                sum += skill_user.skill.point
            end
        end
        return sum / users.count if users.count > 0
    end
end