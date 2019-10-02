SimpleCov.start do
  add_filter("/test/")

  require 'simplecov-stdout'
  formatters = [SimpleCov::Formatter::HTMLFormatter,
                SimpleCov::Formatter::STDOUTFormatter,
                SimpleCov::Formatter::SimpleFormatter]

  #SimpleCov.formatters = SimpleCov::Formatter::MultiFormatter.new(formatters)
  SimpleCov.formatters = SimpleCov::Formatter::SimpleFormatter
end
