# DataTransformer

It loads and process data. Data from multiple data sources such as JSON and CSV can be loaded. It can easily be extended to load
from any data source and then can be processed.   

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'data_transformer'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install data_transformer

## Usage

load 'lib/data_transformer.rb'

config = DataTransformer.config(source_path: 'data.txt', data_format: :json)


puts"=======Configuration=========="

puts "config=#{config.inspect}"

puts"=======Data: Loaded==========="

extractor = DataTransformer::Extractor.new

processor = extractor.load(source_path: config.source_path, parser: config.parser, processor: DataTransformer::Processor.new)

puts "data=#{processor.data}"


## Development

After checking out the repo, run `bin/setup` to install dependencies. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/Kamran Zafar/data_transformer. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

