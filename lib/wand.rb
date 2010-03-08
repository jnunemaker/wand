require 'mime/types'

module Wand
  Version = '0.1'
  
  def self.wave(path)
    type = MIME::Types.type_for(path)[0].to_s
    type = from_executable(path).split(';')[0].strip if type.nil? || type == ''
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
  
  private
    def self.from_executable(path)
      `#{executable} --mime --brief #{path}`
    end
end