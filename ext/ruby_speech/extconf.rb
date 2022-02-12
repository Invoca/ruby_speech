require 'mkmf'

INCLUDEDIRS = ['/usr/local/include', RbConfig::CONFIG['includedir'], '/usr/include']
LIBDIRS = ['/usr/local/lib', RbConfig::CONFIG['libdir'], '/usr/lib']

# Prepend homebrew paths
if RUBY_PLATFORM =~ /x86_64-darwin/
  INCLUDEDIRS.unshift('/usr/local/homebrew/include')
  LIBDIRS.unshift('/usr/local/homebrew/lib')
elsif RUBY_PLATFORM =~ /arm64e-darwin/
  INCLUDEDIRS.unshift('/opt/homebrew/include')
  LIBDIRS.unshift('/opt/homebrew/lib')
end

dir_config('pcre', INCLUDEDIRS, LIBDIRS)

$LIBS << " -lpcre"

unless find_header('pcre.h')
  abort "-----\nPCRE is missing. You must install it as per the README @ https://github.com/adhearsion/ruby_speech\n-----"
end

create_makefile 'ruby_speech/ruby_speech'
