# simplecov-stdout

Generates a textual version of the coverage information displayed is the HTML Formatter.

__Example__
'''
================================================================================
All files (81.82% covered at 1.0 hits/line)

1 files in total. 11 relevant lines. 9 lines covered and 2 lines missed

File                    % covered   Lines   Relevant lines   Lines covered   Lines missed   Avg. Hits/Line
lib/crashtest/car.rb    81.82       21      11               9               2              1.0
================================================================================
'''

*__NOTE: See SimpleCov repo at http://github.com/colszowka/simplecov__*
*__NOTE: See SimpleCov HTML formatter repo at http://github.com/colszowka/simplecov-html__*

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'simplecov-stdout'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install simplecov-stdout

## Usage

Add the following to your `test_helper.rb`:

'''ruby
require 'simplecov-stdout'
'''

Add the following to your `test_helper.rb` or `.simplecov`:

```ruby
SimpleCov.start do
  SimpleCov.minimum_coverage 80

  require 'simplecov-stdout'
  SimpleCov.formatters = SimpleCov::Formatter::STDOUTFormatter
end
```

## Development

Run `rake test` to run the tests.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/jhartm/simplecov-stdout. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the Simplecov::Stdout project’s codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/jhartm/simplecov-stdout/blob/master/CODE_OF_CONDUCT.md).
