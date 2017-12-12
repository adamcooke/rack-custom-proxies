module RackCustomProxies
  module ClassMethods
    def trusted_proxies
      @trusted_proxies ||= begin
        set = ENV['RACK_TRUSTED_PROXIES'] || "127.0.0.1/32 ::1"
        set.split(/\s+/).map { |i| IPAddr.new(i) }
      end
    end
  end

  def self.included(base)
    base.extend ClassMethods
  end
end

require 'rack/request'
Rack::Request.send :include, RackCustomProxies

module Rack::Request::Helpers
  def trusted_proxy?(ip)
    Rack::Request.trusted_proxies.each do |tp|
      return true if tp.include?(ip)
    end
    false
  end
end
