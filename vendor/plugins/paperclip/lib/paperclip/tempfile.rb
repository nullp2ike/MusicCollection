module Paperclip
  # Overriding some implementation of Tempfile
  class Tempfile < ::Tempfile
    # Due to how ImageMagick handles its image format conversion and how
    # Tempfile handles its naming scheme, it is necessary to override how
    # Tempfile makes # its names so as to allow for file extensions. Idea
    # taken from the comments on this blog post:
    # http://marsorange.com/archives/of-mogrify-ruby-tempfile-dynamic-class-definitions
    #
    # This is Ruby 1.8.7's implementation.
    def make_tmpname(basename, n)
      if RUBY_PLATFORM =~ /java/
        case basename
        when Array
          prefix, suffix = *basename
        else
          prefix, suffix = basename, ''
        end

        t = Time.now.strftime("%y%m%d")
        path = "#{prefix}#{t}-#{$$}-#{rand(0x100000000).to_s(36)}-#{n}#{suffix}"
      else
        super
      end
    end
  end

  module TempfileEncoding
    # This overrides Tempfile#binmode to make sure that the extenal encoding
    # for binary mode is ASCII-8BIT. This behavior is what's in CRuby, but not
    # in JRuby
    def binmode
      set_encoding('ASCII-8BIT')
      super
    end
  end
end

if RUBY_PLATFORM =~ /java/
  ::Tempfile.send :include, Paperclip::TempfileEncoding
end
