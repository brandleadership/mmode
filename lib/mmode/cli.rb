require 'thor'
require 'mmode/user'

module Mmode
  class CLI < Thor

    desc 'enable [USER]', 'Enable maintenance mode for given user'

    def enable(name)
      User.new(name).enable
    end

    desc 'disable [USER]', 'Disable maintenance mode for given user'

    def disable(name)
      User.new(name).disable
    end
  end
end

