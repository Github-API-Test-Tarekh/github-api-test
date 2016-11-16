require "ghee.rb"

puts "Please enter username:"

username = gets.chomp

puts "Please enter password:"

password = gets.chomp

puts "Logging in as <#{username}>"

gh = Ghee.basic_auth(username, password)

puts "Log in successful! \nWould you like to add a collaborator? <Usage: press y to enter a username, or n to exit.>"

add_collaborator = gets.chomp

if add_collaborator == 'y'

  puts "Please enter the repository name that you wish to add a collaborator to:"

  repo_name = gets.chomp

  if gh.repos("Github-API-Test-Tarekh", repo_name)

    puts "Please enter exact username for user to be added to repository: <Note: User will be given write access to repository>"

    collaborator = gets.chomp

    gh.repos("Github-API-Test-Tarekh", repo_name).collaborators.add(collaborator)
  else
    puts "Repository failed to load. Please check spelling and try again."
  end
else
  puts "Daisy...Daisy...Give me your answer...do..."
end
