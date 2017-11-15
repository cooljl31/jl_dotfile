# ruby 1.8.7 compatible
require 'rubygems'
require 'irb/completion'

def reload(require_regex)
 $".grep(/^#{require_regex}/).each {|e| load(e) }
end
# interactive editor: use vim from within irb
begin
  `gem install interactive_editor` unless system('gem list -i "^interactive_editor$"')
rescue LoadError => err
  warn "Couldn't load interactive_editor: #{err}"
ensure
  require 'interactive_editor'
end


IRB.conf[:PROMPT][:CUSTOM] = {
  :PROMPT_I => "irb> ",
  :PROMPT_S => "%l>> ",
  :PROMPT_C => ".. ",
  :PROMPT_N => ".. ",
  :RETURN => "=> %s\n"
}
IRB.conf[:PROMPT_MODE] = :CUSTOM
IRB.conf[:AUTO_INDENT] = true

# load .railsrc in rails environments
railsrc_path = File.expand_path('~/.irbrc_rails')
if ( ENV['RAILS_ENV'] || defined? Rails ) && File.exist?( railsrc_path )
  begin
    load railsrc_path
  rescue Exception
    warn "Could not load: #{ railsrc_path } because of #{$!.message}"
  end
end

class Object
  def interesting_methods
    case self.class
    when Class
      self.public_methods.sort - Object.public_methods
    when Module
      self.public_methods.sort - Module.public_methods
    else
      self.public_methods.sort - Object.new.public_methods
    end
  end
end

module Kernel
  def guid(s)
    s.scan(/[a-f0-9-]{36}/).first
  end
end
