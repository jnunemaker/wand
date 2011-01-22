require 'mime/types'
require 'safe_shell'

module Wand
  def self.wave(path, options={})
    type = MIME::Types.type_for(options[:original_filename] || path)[0].to_s
    type = parse_type(execute_file_cmd(path)) if blank?(type)
    type = nil if type =~ /^cannot/i
    type
  end

  def self.executable
    @executable ||= `which file`.chomp
  end

  def self.executable=(path)
    @executable = path
  end

private
  def self.parse_type(output)
    type = output.split(';')[0]
    type = type.strip unless type.nil?
    type
  end

  def self.execute_file_cmd(path)
    SafeShell.execute("#{executable}", "--mime", "--brief", path)
  end

  def self.blank?(str)
    str.nil? || str == ''
  end
end
