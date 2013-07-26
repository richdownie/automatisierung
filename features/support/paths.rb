module Paths
  def path_to(page_name)
    case page_name
      
    when /wunderlist login page/i
      @target + '/#/login'

    when /wunderlist home page/i
      @target
    end
  end
end

World(Paths)