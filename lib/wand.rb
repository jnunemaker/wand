require 'mime/types'

module Wand
  def self.wave(path)
    type = MIME::Types.type_for(path)[0].to_s
    type = execute_file_cmd(path).split(/[; ]/)[0].strip if type.nil? || type == ''
    type = nil if type =~ /^cannot/i
    type
  end

  def self.executable
    @executable ||= `which file`.chomp
  end

  def self.executable=(path)
    @executable = path
  end

  def self.execute_file_cmd(path)
    `#{executable} --mime --brief #{path}`
  end
end
