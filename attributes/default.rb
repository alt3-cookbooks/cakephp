
# Cakebox
default['cakebox']['apps_dir']     = '/home/vagrant/Apps'
default['cakebox']['removable_files'] = [
  '/home/vagrant/install.sh' # Chef left-over in vagrant home
  ]

# SSH
default['cakebox']['ssh']['config_source'] = 'sshd_config.erb'
default['cakebox']['ssh']['config_target'] = '/etc/ssh/sshd_config'

# Database settings
default['cakebox']['databases']['remote_username'] = 'vagrant'
default['cakebox']['databases']['remote_password'] = 'vagrant'

# Nginx: default site template, SSL certificates and test-kitchen catchall html
default['cakebox']['nginx']['default_site'] = 'nginx-default-site.erb'
default['cakebox']['nginx']['catchall_sources'] = 'catchall'
default['cakebox']['nginx']['catchall_webroot'] = '/cakebox/console/webroot'
default['cakebox']['nginx']['certs_dir'] = '/etc/nginx/ssl'

# FriendsOfCake
default['cakebox']['foc']['app_template_file_cache_dir'] = '/var/log/app'

# Motd banner
default['cakebox']['motd']['message_dir'] = '/etc/update-motd.d'
default['cakebox']['motd']['banner_source'] = 'motd-banner.erb'
default['cakebox']['motd']['banner_target'] = '20-cakebox-banner'
default['cakebox']['motd']['removable_messages'] = [
    '10-help-text',
    '90-updates-available'
]

# Sudoers file
default['cakebox']['sudoers']['source'] = 'sudoers.erb'
default['cakebox']['sudoers']['target'] = '/etc/sudoers'
