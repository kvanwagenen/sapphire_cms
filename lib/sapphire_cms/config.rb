module SapphireCms
  class Config
    attr_accessor :authenticate_url

    # Should be overridden in initializer
    def authenticated?
      true
    end
  end
end