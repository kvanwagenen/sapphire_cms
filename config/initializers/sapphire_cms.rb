SapphireCms::Config.class_eval do
  # Override this method in a rails initializer to use authentication
  def authenticated?(request)
    true
  end
end