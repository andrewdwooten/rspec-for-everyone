Fabricator(:user) do
  username { sequence(:username) { |i| "user#{i}" } }
  password "password"
  password_confirmation "password"
end
