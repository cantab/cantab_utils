module Cantab

  class StringFormatter

    class << self

      def parameterize(string)
        re_sep = Regexp.escape("-")
        string.gsub(/[^A-Za-z0-9\-_.]+/, "-").gsub(/#{re_sep}{2,}/, "-")
      end
    end
  end
end
