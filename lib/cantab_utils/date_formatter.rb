module Cantab

  class DateFormatter

    class << self

      def to_long(date)
        date.strftime("%e %B %Y").strip
      end

      def to_slash(date)
        date.strftime("%-d/%-m/%Y")
      end

      def to_long_dash(date)
        date.strftime("%e-%B-%Y").strip
      end

      def date_months_after(date, number_of_months)
        date >> number_of_months
      end
    end
  end
end
