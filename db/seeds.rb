# Default admin user (change password after first deploy to a server!)
if Administrator.count == 0 && !Rails.env.test?
  admin = User.create!(username: "admin", email: "admin@meetdemocracy.com", password: "meetdemocracy",
                       password_confirmation: "meetdemocracy", confirmed_at: Time.current,
                       terms_of_service: "1")
  admin.create_administrator
end

Setting.reset_defaults
load Rails.root.join("db", "web_sections.rb")

# Default custom pages
load Rails.root.join("db", "pages.rb")

# Sustainable Development Goals
load Rails.root.join("db", "sdg.rb")
