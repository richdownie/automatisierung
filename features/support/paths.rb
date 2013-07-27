module Paths
  def path_to(page_name)
    case page_name
      
    when /wunderlist login page/i
      @target + '/#/login'

    when /wunderlist home page/i
      @target
    
    when /wunderlist private lists page/i
      @target + '/#/lists/private'
    
    when /mobile facebook page/i
      'https://m.facebook.com/?_rdr'
    
    when /wunderlist skip api login page/i
      'https://m.facebook.com/login.php?skip_api_login=1&api_key=208559595824260&signed_next=1'
    end
  end
end

World(Paths)