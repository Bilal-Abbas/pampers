# db/seeds.rb

# Check if an admin user already exists
unless User.exists?(email: 'admin@pampers.pk')
    # Create an admin user
    admin_user = User.create!(
      email: 'example@gmail.com',
      password: '12345678',
    )
  
    # Assign the admin role
    admin_user.add_role(:admin)
    admin_user.save!
  
    puts "Admin user created: #{admin_user.email} with role #{admin_user.roles.first.name}"
  else
    puts "Admin user already exists."
  end