require 'mmode/user'

module Mmode
  class User

    attr_accessor :name

    def initialize(name)
      @name = name
    end

    def enable
      run_if_user_exists "touch /home/usr/screenconcept/maintenance.txt; sudo monit unmonitor -g thin_#{@name}"
    end

    def disable
      run_if_user_exists "rm /home/usr/screenconcept/maintenance.txt; sudo monit monitor -g thin_#{@name}"
    end

    private

    def homedir
      "/home/usr/#{name}"
    end

    def run_if_user_exists(command)
      `ssh scrcpt2.nine.ch "if [ -d '#{homedir}' ]; then #{command}; else echo #{error}; fi"`
    end

    def error
      "User does not exist!"
    end
  end
end

