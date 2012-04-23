require 'thor'

module Mmode
  class CLI < Thor

    desc 'enable [USER]', 'Enable maintenance mode for given user'

    def enable(name)
      user = User.new(name)
      if user.exists?
        user.enable
      else
        puts 'User does not exist!'
      end
    end

    desc 'disable [USER]', 'Disable maintenance mode for given user'

    def disable(name)
      user = User.new(name)
      if user.exists?
        user.disable
      else
        puts 'User does not exist!'
      end
    end
  end
end

