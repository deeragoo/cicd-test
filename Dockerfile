# Use the official Ruby image as the base image
FROM ruby:3.2.2

# Set the working directory in the container
WORKDIR /app

# Install dependencies
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs

# Copy the Gemfile and Gemfile.lock into the container
COPY Gemfile Gemfile.lock ./

# Install gems
RUN bundle install

# Copy the rest of the application code into the container
COPY . .

# RUN bundle exec rails db:create
# RUN bundle exec rails db:migrate
# RUN bundle exec rails db:seed

# Start the Rails application
CMD ["rails", "server", "-b", "0.0.0.0"]
