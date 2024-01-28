# db/seeds.rb

# Check if an admin user already exists
unless User.count <= 0
    # Create an admin user
  
    puts "Admin user created: #{admin_user.email} with role #{admin_user.roles.first.name}"
  else
    puts "Admin user already exists."
  end