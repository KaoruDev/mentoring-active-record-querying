# This file is copied to spec/ when you run 'rails generate rspec:install'
ENV["RAILS_ENV"] ||= 'test'
require 'spec_helper'
require File.expand_path("../../config/environment", __FILE__)
require 'rspec/rails'

# Add additional requires below this line. Rails is not loaded until this point!

# Requires supporting ruby files with custom matchers and macros, etc, in
# spec/support/ and its subdirectories. Files matching `spec/**/*_spec.rb` are
# run as spec files by default. This means that files in spec/support that end
# in _spec.rb will both be required and run as specs, causing the specs to be
# run twice. It is recommended that you do not name files matching this glob to
# end with _spec.rb. You can configure this pattern with the --pattern
# option on the command line or in ~/.rspec, .rspec or `.rspec-local`.
#
# The following line is provided for convenience purposes. It has the downside
# of increasing the boot-up time by auto-requiring all files in the support
# directory. Alternatively, in the individual `*_spec.rb` files, manually
# require only the support files necessary.
#
# Dir[Rails.root.join("spec/support/**/*.rb")].each { |f| require f }

# Checks for pending migrations before tests are run.
# If you are not using ActiveRecord, you can remove this line.
ActiveRecord::Migration.maintain_test_schema!

RSpec.configure do |config|
  # Remove this line if you're not using ActiveRecord or ActiveRecord fixtures
  config.fixture_path = "#{::Rails.root}/spec/fixtures"

  # If you're not using ActiveRecord, or you'd prefer not to run each of your
  # examples within a transaction, remove the following line or assign false
  # instead of true.
  config.use_transactional_fixtures = true

  # RSpec Rails can automatically mix in different behaviours to your tests
  # based on their file location, for example enabling you to call `get` and
  # `post` in specs under `spec/controllers`.
  #
  # You can disable this behaviour by removing the line below, and instead
  # explicitly tag your specs with their type, e.g.:
  #
  #     RSpec.describe UsersController, :type => :controller do
  #       # ...
  #     end
  #
  # The different available types are documented in the features, such as in
  # https://relishapp.com/rspec/rspec-rails/docs
  config.infer_spec_type_from_file_location!
end

class SpecHelper
  def self.seed_db
    ["alice", "domenick.spinka", "dorian.breitenberg", "edd", "laurie"].each do |name|
      User.create(username: name, email: "#{name}@gmail.com")
    end

    3.times do
      Post.create(user_id: 1, body: Faker::Lorem.paragraph(4))
    end

    6.times do
      Post.create(user_id: 2, body: Faker::Lorem.paragraph(4))
    end

    4.times do
      Post.create(user_id: 3, body: Faker::Lorem.paragraph(4))
    end

    5.times do
      Post.create(user_id: 4, body: Faker::Lorem.paragraph(4))
    end

    2.times do
      Post.create(user_id: 5, body: Faker::Lorem.paragraph(4))
    end

    Like.create(user_id: 1, post_id: 1)
    Like.create(user_id: 1, post_id: 4)
    Like.create(user_id: 1, post_id: 5)
    Like.create(user_id: 1, post_id: 8)
    Like.create(user_id: 1, post_id: 9)

    Like.create(user_id: 2, post_id: 1)
    Like.create(user_id: 2, post_id: 7)
    Like.create(user_id: 2, post_id: 9)
    Like.create(user_id: 2, post_id: 10)
    Like.create(user_id: 2, post_id: 3)

    Like.create(user_id: 3, post_id: 8)
    Like.create(user_id: 3, post_id: 7)
    Like.create(user_id: 3, post_id: 6)
    Like.create(user_id: 3, post_id: 3)

    Like.create(user_id: 4, post_id: 2)
    Like.create(user_id: 4, post_id: 4)
    Like.create(user_id: 4, post_id: 11)

    Like.create(user_id: 5, post_id: 2)
    Like.create(user_id: 5, post_id: 6)
    Like.create(user_id: 5, post_id: 8)
    Like.create(user_id: 5, post_id: 9)

    Comment.create(post_id: 1, user_id: 1, body: Faker::Lorem.paragraph(5))
    Comment.create(post_id: 3, user_id: 1, body: Faker::Lorem.paragraph(5))
    Comment.create(post_id: 2, user_id: 1, body: Faker::Lorem.paragraph(5))
    Comment.create(post_id: 4, user_id: 1, body: Faker::Lorem.paragraph(5))
    Comment.create(post_id: 6, user_id: 1, body: Faker::Lorem.paragraph(5))

    Comment.create(post_id: 2, user_id: 2, body: Faker::Lorem.paragraph(5))
    Comment.create(post_id: 6, user_id: 2, body: Faker::Lorem.paragraph(5))
    Comment.create(post_id: 9, user_id: 2, body: Faker::Lorem.paragraph(5))
    Comment.create(post_id: 10, user_id: 2, body: Faker::Lorem.paragraph(5))

    Comment.create(post_id: 8, user_id: 3, body: Faker::Lorem.paragraph(5))

    Comment.create(post_id: 11, user_id: 4, body: Faker::Lorem.paragraph(5))
    Comment.create(post_id: 7, user_id: 4, body: Faker::Lorem.paragraph(5))

    Comment.create(post_id: 5, user_id: 5, body: Faker::Lorem.paragraph(5))
    Comment.create(post_id: 7, user_id: 5, body: Faker::Lorem.paragraph(5))
    Comment.create(post_id: 9, user_id: 5, body: Faker::Lorem.paragraph(5))
  end
end


