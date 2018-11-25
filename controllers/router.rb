# frozen_string_literal: true

module Router
  class << self
    def select_option(option)
      case option.downcase
      when 'start' then Game.process
      when 'rules' then Output.rules
      when 'stats' then puts 'its stats'
      when 'exit' then Output.exit
      else Output.unexpected_option
      end
    end
  end
end
