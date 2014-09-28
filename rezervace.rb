# this is the simplest ruby program
require 'digest'


puts "Hello world from Cloud9"

puts checksum = Digest::MD5.hexdigest("Your_account_nameYour_account_password#{'user_name@client.com'}");


# click the 'Run' button at the top to start this application

# === RUNNING RUBY ON RAILS ===
#
# If you want to run Ruby on Rails, please check out the documentation at:
#
#   https://docs.c9.io/running_a_rails_app.html
