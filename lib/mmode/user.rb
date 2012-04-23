require 'mmode/user'

module Mmode
  class User

    attr_accessor :name

    def initialize(name)
      @name = name
    end

    def exists?
      File.exists? "/home/usr/#{@name}"
    end

    def enable
      `ssh scrcpt2.nine.ch 'touch /home/usr/screenconcept/maintenance.txt; sudo monit unmonitor -g thin_#{@name}'`
    end

    def disable
      `ssh scrcpt2.nine.ch 'rm /home/usr/screenconcept/maintenance.txt; sudo monit monitor -g thin_#{@name}'`
    end
  end
end

