require 'rubygems'
require 'test/unit'
require 'shoulda'
require 'pathname'

$LOAD_PATH.unshift(File.join(File.dirname(__FILE__), '..', 'lib'))
$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'wand'

FilePath = Pathname(File.dirname(__FILE__)).join('files')

class Test::Unit::TestCase
end
