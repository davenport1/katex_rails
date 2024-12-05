# KatexRails

The KatexRails gem plugin is a wrapper around the javascript KaTeX library to provide an easy to use tag for outputting latex mathematical expressions in views

## Installation

Install the gem and add to the application's Gemfile by executing:

```bash
bundle add katex_rails 
```

If bundler is not being used to manage dependencies, install the gem by executing:

```bash
gem install katex_rails 
```

## Usage

Use the helper in your layouts or views:

```html.erb
<%= katex_include_tag %>
<%= katex_render_tag(selector: '.math') %>
```

Add math content with the .math class in your HTML:

```html
<div class="math">
  $$ E = mc^2 $$
</div>
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and the created tag, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/davenport1/katex_rails. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [code of conduct](https://github.com/davenport1/katex_rails/blob/master/CODE_OF_CONDUCT.md).

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the KatexRails project's codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/davenport1/katex_rails/blob/master/CODE_OF_CONDUCT.md).