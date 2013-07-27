class Set < Thor
  include Thor::Actions

  no_tasks do

    def copy_environment(new_environment)
      run("cp features/support/envs/env.rb.#{new_environment} features/support/env.rb")
    end

  end

  desc "chrome", "Run Tests in Chrome"
  def chrome
    copy_environment("chrome")
  end

  desc "safari", "Run Tests in Safari with Saucelabs"
  def safari
    copy_environment("safari")
  end

  desc "firefox", "Run Tests in Firefox"
  def firefox
    copy_environment("firefox")
  end

  desc "IE10", "Run tests in IE10 with Saucelabs"
  def IE10
    copy_environment("IE10")
  end

  desc "ipad", "Run tests in iPhone with Saucelabs"
  def ipad
    copy_environment("ipad")
  end

  desc "edit", "Edit Tests"
  def edit
    copy_environment("edit")
  end
end