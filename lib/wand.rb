require 'mime/types'

module Wand
  def self.wave(path)
    type = MIME::Types.type_for(path)[0].to_s
    type = %x[#{executable} --mime --brief #{path}].split(';')[0] if type.nil? || type == ''
    type = nil if type =~ /cannot\sopen/
    type
  end

  def self.executable
    return @executable if defined?(@executable)
    @executable ||= `which file`.chomp
  end

  def self.executable=(path)
    @executable = path
  end
end