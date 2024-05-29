# to encrypt a secret, use BCrypt::Password.create(secret)
# to test a secret, use BCrypt::Password.new(encrypted) == secret
# run this file using rails runner scripts/encryption.rb

# TODO:
# 1. encrypt a secret and puts encrypted string
secret ="1234"
encrypted = BCrypt::Password.create(secret)
puts encrypted
# 2. prepare encrypted string for testing
entered_password = "1234"
outcome = BCrypt::Password.new(encrypted) == entered_password
# 3. test secret against prepared encrypted string
puts outcome
