# Uy::Rut

<a href="http://www.omniref.com/ruby/gems/uy-rut"><img src="http://assets2.omniref.com/assets/logo-1e25ba89780a42da4556dd96c03ac954.png" height="18" width="75"></a>

This gem includes the necessary helper methods to validate Uruguayan company identification numbers ("Registro Único Tributario" or RUT).

## Installation

Add this line to your application's Gemfile:

    gem 'uy-rut'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install uy-rut

## Usage

```ruby
require 'uy/rut'

# to validate a number:
Uy::Rut.new('098699850070').valid?
# => true

# to generate a valid number for testing purposes:
Uy::Rut.new.rut
# => "051125770027"
```

## Contributing

If you want to contribute to this project, just fork it, make your changes, run the tests and create a pull request. Also, feel free to report issues on the [issues section](issues).

## Credits

Thanks to @cschmeichel for facilitating the algorithms!
