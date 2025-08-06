server '74.225.183.7', roles: [:web, :app, :db, :puma_rails], primary: true, ssh_options: {
  keys: %w(/home/amit-dhoundiyal/Downloads/sumit-dh.pem),
  forward_agent: true,
  auth_methods: %w(publickey)
}
set :puma_role, :puma_rails
set :rails_env, :staging
set :stage, :staging
set :rack_env, :staging
set :branch, 'thermal-azure-deployment'
