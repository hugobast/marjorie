require 'capybara/poltergeist'

Capybara.javascript_driver = :poltergeist
Capybara.app_host = 'http://admin.lvh.me'
Capybara.server_port = 3000