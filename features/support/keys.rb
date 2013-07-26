class Keys
  def self.configuration_file
    File.join(File.dirname(__FILE__),"..","..","config", "keys.yml")
  end

  def self.configuration
    YAML.load_file(configuration_file)
  end

  def self.email
    configuration['email']
  end
  
  def self.password
    configuration['password']
  end

    def self.domain
      configuration['domain']
    end
end