require 'capybara/poltergeist'

Capybara.javascript_driver = :poltergeist
Capybara.app_host = 'http://admin.lebeaujour.dev'
Capybara.always_include_port = true
Capybara.server_port = 3000