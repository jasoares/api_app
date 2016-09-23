class Subdomain
  def initialize(subdomain)
    @subdomain = subdomain
  end

  def matches?(req)
    return true if Rails.env.development?
    req.subdomain.present? && @subdomain == req.subdomain
  end

  def self.[](*subdomain)
    self.new(subdomain)
  end
end
