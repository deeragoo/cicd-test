class ApplicationController < ActionController::Base
  # before_action :throw_logs
  # rescue_from ActiveRecord::PendingMigrationError, with: :run_migrations

  # def run_migrations
  #   Rails.logger.info "****************** RAILS NEEDS MIGATIONS RUN END ***********************"
  #   if Rails.env.development?
  #     `rake db:migrate`
  #     render plain: 'Migrations are being run. Please refesh the page'
  #   else
  #     render plain: 'Application is in maintenance mode. Please restart the server.'
  #   end
  # end

  # def throw_logs
  #   Rails.logger.info "****************** RAILS NEEDS MIGATIONS RUN END ***********************"
  # end

end
