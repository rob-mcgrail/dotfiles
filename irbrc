begin
  require 'irbtools'
rescue LoadError
  `gem install irbtools`
end

begin
  require 'ap'
rescue LoadError
  `gem install awesome_print`
end

