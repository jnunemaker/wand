require 'helper'

class TestWand < Test::Unit::TestCase
  context "Wand" do
    setup do
      Wand.executable = `which file`.chomp
    end

    {
      'AVGARDD.svg'    => 'image/svg+xml',
      'compressed.zip' => 'application/zip',
      'favicon.ico'    => 'image/vnd.microsoft.icon',
      'index.html'     => 'text/html',
      'jquery.js'      => 'application/javascript',
      'ol_tiny.jpg'    => 'image/jpeg',
      'ol_tiny.png'    => 'image/png',
      'styles.css'     => 'text/css',
      'LICENSE'        => 'text/plain',
    }.each_pair do |name, type|
      should "use mime type gem if it returns type #{name}" do
        assert_equal type, Wand.wave(FilePath.join(name).expand_path.to_s)
      end
    end

    {
      'example.m4r'    => 'audio/mp4',
      'AVGARDD.eot'    => 'application/octet-stream',
      'AVGARDD.ttf'    => 'application/octet-stream',
      'AVGARDD.woff'   => 'application/octet-stream',
    }.each_pair do |name, type|
      should "fall back to unix file command when mime type returns nothing for #{name}" do
        assert_equal type, Wand.wave(FilePath.join(name).expand_path.to_s)
      end
    end

    should "return nil when mime type and file fail" do
      assert_nil Wand.wave('AVGARDD.eot')
    end

    should "detect executable" do
      assert_equal '/usr/bin/file', Wand.executable
    end

    should "allow setting the executable" do
      Wand.executable = '/usr/local/bin/file'
      assert_equal '/usr/local/bin/file', Wand.executable
    end

    should "strip newlines and such" do
      Wand.expects(:execute_file_cmd).returns("image/jpeg\n")
      assert_equal "image/jpeg", Wand.wave(FilePath.join(name).expand_path.to_s)
    end

    should "support old file output format" do
      Wand.expects(:execute_file_cmd).returns("text/plain charset=us-ascii\n")
      assert_equal "text/plain", Wand.wave('')
    end
  end
end
