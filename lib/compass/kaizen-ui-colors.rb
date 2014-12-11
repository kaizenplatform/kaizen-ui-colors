require 'compass/kaizen-ui-colors/version'

module Compass
  module KaizenUIColors
    Compass::Frameworks.register 'compass-kaizen-ui-colors', :stylesheets_directory => "#{File.dirname(__FILE__)}/../.."
  end
end
