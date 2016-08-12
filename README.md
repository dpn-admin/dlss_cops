
[![Gem Version](https://badge.fury.io/rb/dpn_cops.svg)](https://badge.fury.io/rb/dpn_cops)

# DpnCops

DpnCops is a Rubocop configuration gem that holds DPN's baseline Ruby style guide. See https://github.com/bbatsov/rubocop for more information about Rubocop.

This style guide adapted from a [DLSS style guide](https://github.com/sul-dlss/DeveloperPlaybook/tree/master/style).

## Installation

We recommend you use the latest version of DpnCops but if needed, you can
select a specific version to manage change.  

Add a development_dependency in your gem's gemspec file

```ruby
  gemspec.add_development_dependency 'dpn_cops'
```

OR, if it's not a gem, add these lines to your Gemfile:

```ruby
group :development, :test do
  gem 'dpn_cops'
end
```

## Usage

Set up your .rubocop.yml file:

```yaml
inherit_gem:
  dpn_cops: "config/dpn_baseline.yml"

AllCops:
  TargetRubyVersion: 2.2
```

Then you can launch rubocop via: `bundle exec rubocop <options>`

See https://github.com/bbatsov/rubocop#basic-usage for more information.
