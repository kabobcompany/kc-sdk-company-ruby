[![Build Status](https://ci.kabob.io/api/badges/kabobcompany/kc-sdk-company-ruby/status.svg)](https://ci.kabob.io/kabobcompany/kc-sdk-company-ruby)
# kc-sdk-company
Provides kabob cloud app api client.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'kc-sdk-company'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install kc-sdk-company

For rails, create config `config/initializers/kc_sdk_company.rb`

```ruby
KcSdkCompany.configure do |config|
  # kabob cloud api url, default: https://cloud.kabob.io
  config.api_url = 'https://cloud.kabob.io'

  # you have to set your app access token
  config.access_token = 'YOUR_COMPANY_ACCESS_TOKEN'

  # you can set a logger if you want logging api request
  # config.logger = Rails.logger
end

```

## Usage

[Api](#api)

### Api

## Contact
The project's website is located at https://github.com/kabobcompany/kc-sdk-company-ruby
