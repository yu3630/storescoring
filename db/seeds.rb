# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require "csv"

CSV.foreach('db/area.csv') do |row| 
    Area.create(:name => row[0], :sort => row[1]) 
end

CSV.foreach('db/store.csv') do |row|
    Store.create(:name => row[0], :area_id => row[1], :sort => row[2])
end

CSV.foreach('db/role.csv') do |row|
    Role.create(:name => row[0])
end

CSV.foreach('db/skill.csv') do |row|
    Skill.create(:skill_category_id => row[0], :name => row[1], :point => row[2])
end

CSV.foreach('db/skillcategory.csv') do |row|
    SkillCategory.create!(:name => row[0], :sort => row[1], :skill_name => row[2])
end

CSV.foreach('db/user.csv') do |row|
    User.create(:number => row[0], :password => row[1], :name => row[2], :role_id => row[3], :store_id => row[4], :area_id => row[5])
end