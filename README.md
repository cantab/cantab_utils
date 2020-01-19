# Cantab Utilities

Useful utilities to format dates and strings.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'cantab_utils'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install cantab_utils

## Usage

```Ruby
require 'cantab_utils'
```

Then call the class methods on the appropriate formatter, `DateFormatter` or `StringFormatter`.

### DateFormatter Class Methods

### .to_long
Outputs the date with four digit year, month spelt out in full and the day digit without leading zeros.

```Ruby
Cantab::DateFormatter.to_long(Date.new(2017,3,9))
=> "9 March 2017"
```

### .to_long_dash
As with `DateFormatter.to_long`, but separated by dashes.

```Ruby
Cantab::DateFormatter.to_long_dash(Date.new(2017,3,9))
=> "9-March-2017"
```

### .to_slash
Outputs the date with four digit year, month and day digits separated by slashes, without leading zeros.

```Ruby
Cantab::DateFormatter.to_slash(Date.new(2017,3,9))
=> "9/3/2017"
```

### .date_months_after
Takes a date and an Integer, outputs the date that is the number of months after that date.

```Ruby
Cantab::DateFormatter.date_months_after(Date.new(2017,3,9), 5)
=> #<Date: 2017-08-09 ((2457975j,0s,0n),+0s,2299161j)>

Cantab::DateFormatter.date_months_after(Date.new(2017,3,9), 5).to_s
=> "2017-08-09"
```

### StringFormatter Class Methods

### .parameterize

Acts like ActiveSupport::Inflector's `parameterize` method. Replaces special characters in a string so that it may be used as part of a 'pretty' URL.

```Ruby
Cantab::StringFormatter.parameterize("The rain in Spain stays mainly in the plain")
=> "The-rain-in-Spain-stays-mainly-in-the-plain"
```

## Contributing
Feel free to drop us a line to let us know you would like to work on something or if you have an idea. Otherwise, fork, code, commit, push and create pull request, *viz*:

1. Create a fork of the repo.
2. Create your feature branch (`git checkout -b new-feature`).
2. Write some tests (in RSpec, if you please).
3. Write the code that allows the tests to pass.
3. Commit your changes (`git commit -am 'Add some feature'`).
4. Push to the branch (`git push origin new-feature`).
5. Create a new [Pull Request] (https://help.github.com/articles/using-pull-requests).

More details on how to contribute can be found at this great Thoughtbot blogpost [8 (new) steps for fixing other people's code] (http://robots.thoughtbot.com/8-new-steps-for-fixing-other-peoples-code).

## Copyright

Copyright (c) 2017 Chong-Yee Khoo
