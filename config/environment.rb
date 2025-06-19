# Load the Rails application.
require_relative "application"

# Initialize the Rails application.
Rails.application.initialize!

# Fix form field error styling
ActionView::Base.field_error_proc = Proc.new do |html_tag, _instance|
  html_tag.html_safe
end
