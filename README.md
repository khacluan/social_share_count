# SocialShareCount

TODO: Write a gem description

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'social_share_count'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install social_share_count

    $ require 'social_share_count'

## Usage

```ruby

  class ABC < ActiveRecord::Base
    def facebook_share_count
      SocialShareCount.count('facebook', 'http://google.vn')
    end
  end
```


