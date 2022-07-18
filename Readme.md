# activemerchant-payrix

ActiveMerchant Payrix is an add-on for ActiveMerchant which provides a gateway
for [Payrix's](https://www.payrix.com/)
[HPP service](https://docs.rest.paymentsapi.io/#5bd000e6-e156-4242-962b-3b93e9ed8f9e).

## Installation

Before installing the gem you should have a Payrix account ready to use. If not
then [Contact Payrix for more info.](https://www.payrix.com/)

To install simply add the following line to your `Gemfile` and then run
`bundle install`:

```ruby
gem 'activemerchant-payrix'
```

The gateway can be initialised by passing your login details like so:

```ruby
gateway = ActiveMerchant::Billing::PayrixGateway.new(:login => 'login', :password => 'pass', :business_id => 'num', :service => 'hpp')
```

## Usage

Once you have an initialised gateway, you can use the `setup_purchase` method:

```ruby
amount     = 1000 # 1000 cents is $10.00 AUD
options    = { return_url: return_url } # Pass the return url to Payrix

response = gateway.purchase(amount, options)

if response.sucess?
  puts "All OK!"
else
  puts response.message # Output the error message
end
```

## License

activemerchant-payrix is distributed under a standard MIT license, see
[LICENSE](https://github.com/mhssmnn/activemerchant-payrix/blob/master/LICENSE)
for further information.

## Contributing

Fork on GitHub and after you’ve committed tested patches, send a pull request.

To get tests running simply run `bundle install` and then `rake test:units`.
