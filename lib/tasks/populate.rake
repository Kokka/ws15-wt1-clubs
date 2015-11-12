require 'faker'  
namespace :db do   
desc "Fill database with sample data" 
task populate: :environment do
	[Group, Member, Meeting, Invite].each(&:delete_all)
        10.times do |n|
          name  = Faker::Company.name
          Group.create!(:name => name)
        end   
		20.times do |n|
          first_name  = Faker::Name.first_name
          last_name  = Faker::Name.last_name
		  password = Faker::Lorem.characters(10)
		  Member.create!(:firstName => first_name,
						 :lastName => last_name,
						 :password => password)
        end
		5.times do |n|
          date  = Faker::Date.forward(23)
		  Meeting.create!(:meetDate => date,
						  :group_id => n)
        end	
		8.times do |n|
          accept  = Faker::Number.number(1)
		  Invite.create!(:accept => accept,
						 :meeting_id => n+10,
						 :member_id => n)
        end		
     end 
  end