require 'capybara/poltergeist'

Capybara.javascript_driver = :poltergeist
Capybara.app_host = 'http://admin.marjorieb.dev'
Capybara.always_include_port = true
