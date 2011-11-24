require 'thor'

module Mmode
  class CLI < Thor

    desc 'enable [USER]', 'Enable maintenance mode for given user'
    def enable(user)
      `ssh scrcpt2.nine.ch 'touch /home/usr/screenconcept/maintenance.txt; sudo monit unmonitor -g thin_#{user}'`
    end

    desc 'disable [USER]', 'Disable maintenance mode for given user'
    def disable(user)
      `ssh scrcpt2.nine.ch 'rm /home/usr/screenconcept/maintenance.txt; sudo monit monitor -g thin_#{user}'`
    end

  end
end
