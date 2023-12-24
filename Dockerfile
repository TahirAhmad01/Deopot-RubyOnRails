FROM phusion/passenger-full:2.2.0

# Install Ruby 3.1.4
RUN /pd_build/ruby-3.1.4

# Remove the default Nginx configuration
RUN rm /etc/nginx/sites-enabled/default
RUN rm -f /etc/service/nginx/down
RUN rm -f /etc/service/redis/down

# Add your Nginx configuration
ADD config/nginx.conf /etc/nginx/sites-enabled/depot.conf

# Switch to the app user
USER app

# Create necessary directories and set working directory
RUN mkdir /home/app/depot
WORKDIR /home/app/depot

# Set environment variables
ENV RAILS_ENV=production
ENV BUNDLE_WITHOUT="development test"

# Install Bundler and dependencies
COPY --chown=app:app Gemfile Gemfile.lock .
RUN gem install bundler:2.5.1
RUN bundle install

# Copy the application code
COPY --chown=app:app . .

# Precompile assets
RUN SECRET_KEY_BASE=`bin/rails secret` bin/rails assets:precompile

# Switch back to root user and start the container
USER root
CMD ["/sbin/my_init"]
