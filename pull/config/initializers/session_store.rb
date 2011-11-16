# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_pull_session',
  :secret      => '05d8c402b77be1aa90ca48a8b0df9c6d48eef9e7dc32c401d1bdb08a1cc0e741e47be4f15bbff7451bab16634eb9c9ee268d549e31a9cb7a67dd6a8dd28e6dac'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
