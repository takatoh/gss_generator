# GSS Generator

GSS Generator provide generating a set of points that are uniform points on a sphere, with 
generalized spiral set.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'gss_generator'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install gss_generator

## Usage

### As command

    $ gss_gen <r> <N>

r is radius of spher and N is number of points you want. Output points in polar coordinates into CSV.
If you want in cartesian coordinates:

    $ gss_gen --cartesian <r> <N>

For more information, use --help option.

## Development

After checking out the repo, run `bin/setup` to install dependencies. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/takatoh/gss_generator.

