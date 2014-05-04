require 'capybara/poltergeist'

Capybara.javascript_driver = :poltergeist
Capybara.app_host = 'http://admin.lebeaujour.ca'
Capybara.server_port = 3000