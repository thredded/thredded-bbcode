# Thredded Plugin: Syntax Highlighting in Markdown via Coderay [![Build Status](https://travis-ci.org/thredded/thredded-markdown_coderay.svg?branch=master)](https://travis-ci.org/thredded/thredded-markdown_coderay) [![Test Coverage](https://codeclimate.com/github/thredded/thredded-markdown_coderay/badges/coverage.svg)](https://codeclimate.com/github/thredded/thredded-markdown_coderay/coverage)

A Thredded plugin that Highlights code syntax in your Markdown posts via
[Coderay](https://github.com/rubychan/coderay).

The result with the default styles looks like this:

![thredded-markdown_coderay](https://cloud.githubusercontent.com/assets/216339/20035926/46650068-a3b5-11e6-90b0-2530bf1d98f5.png)

Code language is not inferred, and must be specified, e.g.:

    ```ruby
    puts 'hi'
    ```
    
or

    ~~~ ruby
    puts 'hi'
    ~~~

Currently only supports the default Thredded markdown parser:
[Kramdown](https://github.com/gettalong/kramdown).

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'thredded-markdown_coderay'
```

And then execute:

```bash
bundle
rails g thredded:markdown_coderay:install
```

## Usage

\-

## Development

After checking out the repo, run `bin/setup` to install dependencies.
Then, run `rake spec` to run the tests. You can also run `bin/console` for an
interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`.
To release a new version, update the version number in `version.rb`, and then
run `bundle exec rake release`, which will create a git tag for the version,
push git commits and tags, and push the `.gem` file to
[rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/thredded/thredded-markdown_coderay. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.


## License

The gem is available as open source under the terms of the
[MIT License](http://opensource.org/licenses/MIT).

