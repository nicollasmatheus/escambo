namespace :utils do
  desc "TODO"
  task adm: :environment do
  	puts "Criando Administradores Fakes...."
  	10.times do
		Admin.create!(name: Faker::Name.name ,email:Faker::Internet.email,
					 password:"123456",password_confirmation: "123456",
					 role: [0,1].sample)
	end
  end

end
