source "https://rubygems.org"

git_source(:github) {|repo_name| "https://github.com/#{repo_name}" }

# Specify your gem's dependencies in simplecov-stdout.gemspec
gemspec

group :test, :development do
  gem "bundler-audit", require: false
  gem "minitest", require: false
  gem "mocha", require: false
end

group :quality do
  gem "rubocop", require: false
  gem "simplecov", require: true
end
