# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

# Seed data for the 'codes' table
num_codes = 100  # Change this to the desired number of codes
num_codes.times do |i|
  c = Code.new
  c.vended = rand < 0.5
  c.code_hash = SecureRandom.hex(5)
  c.save
end

# Seed data for the 'users' table
num_users = 100  # Change this to the desired number of users
num_users.times do |i|
  u = User.new
  u.name = "Random User #{i + 1}"
  u.email = "user#{i + 1}@example.com"
  u.save
end

# CREATE TABLE codes (
#     id serial PRIMARY KEY,
#     vended boolean,
#     created_at timestamp
# );


# CREATE TABLE users (
#     id serial PRIMARY KEY,
#     name varchar(255),
#     email varchar(255) UNIQUE,
#     created_at timestamp
# );


# -- Set the number of random codes you want to insert
# DO $$
# DECLARE
#     num_codes integer := 100;  -- Change this to the desired number of codes
# BEGIN
#     FOR i IN 1..num_codes LOOP
#         INSERT INTO codes (vended, created_at)
#         SELECT
#             CASE WHEN random() < 0.5 THEN true ELSE false END, -- Randomly choose true or false
#             CURRENT_TIMESTAMP - (i * INTERVAL '1 day')
#         WHERE NOT EXISTS (SELECT 1 FROM codes WHERE created_at = (CURRENT_TIMESTAMP - (i * INTERVAL '1 day')));
#     END LOOP;
# END $$;



# -- Set the number of random users you want to insert
# DO $$
# DECLARE
#     num_users integer := 100;  -- Change this to the desired number of users
# BEGIN
#     FOR i IN 1..num_users LOOP
#         INSERT INTO users (name, email, created_at)
#         SELECT
#             'Random User ' || i,
#             'user' || i || '@example.com',
#             CURRENT_TIMESTAMP - (i * INTERVAL '1 day')
#         WHERE NOT EXISTS (SELECT 1 FROM users WHERE name = 'Random User ' || i);
#     END LOOP;
# END $$;
