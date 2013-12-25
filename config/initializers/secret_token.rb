# Be sure to restart your server when you modify this file.

# Your secret key is used for verifying the integrity of signed cookies.
# If you change this key, all old signed cookies will become invalid!

# Make sure the secret is at least 30 characters and all random,
# no regular words or you'll be exposed to dictionary attacks.
# You can use `rake secret` to generate a secure secret key.

# Make sure your secret_key_base is kept private
# if you're sharing your code publicly.

#credit to: https://github.com/gitlabhq/gitlabhq/pull/4040/files
require 'securerandom'

def get_secret_key
  secret_file = Rails.root.join('.secret')
  if File.exist? secret_file
    # Use the existing token.
    File.read(secret_file).chomp
  else
    # Generate a new token of 64 random hex characters and store it in file.
    secret = SecureRandom.hex(64)
    File.write(secret_file, secret)
    secret
  end
end

GopherGold::Application.config.secret_key_base = get_secret_key