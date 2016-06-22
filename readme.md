# High card

A simple command-line based game written in Ruby.

```bash
$ cd high_card
$ ruby high_card.rb
```

## rspec

Create a `Gemfile`

```
$ echo 'source "https://rubygems.org"' >> Gemfile
```

Add `rspec` to `Gemfile` as a dependency

```
...
gem "rspec"
```

Install dependencies

```
$ bundle install
```

Initialize the project's spec directory

```
$ rspec --init
```

## [rspec guidelines with ruby](http://betterspecs.org/)

#### Class method and instance methods

Ruby documentation convention of . (or ::) when referring to a class method's name and # when referring to an instance method's name.
