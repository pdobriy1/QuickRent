# TL;DR: YOU SHOULD DELETE THIS FILE
#
# This file is used by web_steps.rb, which you should also delete
#
# You have been warned
module NavigationHelpers
  # Maps a name to a path. Used by the
  #
  #   When /^I go to (.+)$/ do |page_name|
  #
  # step definition in web_steps.rb
  #
  def path_to(page_name)
    case page_name

    when /^the home\s?page$/
      '/houses'
    when /^the QuickRent home page$/
      '/houses'
    when /^welcome page$/
      '/houses/welcome'
    when /^LOGIN$/
      '/login'
    when /^SIGNUP$/
      '/signup'
      
    when /^the (edit|details) page for "(.*)"$/
      house = House.find_by_title($2)
      $1 == "details" ? house_path(house) : edit_house_path(house)
    when /^the Similar Houses page for "(.*)"$/
      house = House.find_by_title($1)
      same_director_path(house)
    
    # Add more mappings here.
    # Here is an example that pulls values out of the Regexp:
    #
    #   when /^(.*)'s profile page$/i
    #     user_profile_path(User.find_by_login($1))

    else
      begin
        page_name =~ /^the (.*) page$/
        path_components = $1.split(/\s+/)
        self.send(path_components.push('path').join('_').to_sym)
      rescue NoMethodError, ArgumentError
        raise "Can't find mapping from \"#{page_name}\" to a path.\n" +
          "Now, go and add a mapping in #{__FILE__}"
      end
    end
  end
  
  #def login
  
    #fill_in('User name', with: user.name)
    #fill_in('Password', with: user.password)
    #click_button('Log in')
  #end
end

World(NavigationHelpers)
