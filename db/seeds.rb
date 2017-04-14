class Seed

  def start
    create_users
    create_castles
    create_kittens
  end

  def create_users
    100.times do |e|
      User.create(username:                   Faker::Superhero.name,
                  password:                   'password')
      puts "Created #{User.last.username}; TotalUsers: #{User.count}"
    end
  end

  def create_castles
    User.all.each do |user|
      5.times do |i|
        user.kitty_castles.create(name: Faker::HarryPotter.location)
        puts "Created #{KittyCastle.last.name}; TotalKittyCastles: #{KittyCastle.count}"
      end
    end
  end

  def create_kittens
    KittyCastle.all.each do |castle|
      5.times do |i|
        castle.kittens.create(name:       Faker::Cat.name,
                              image_url:  "https://robohash.org/#{Faker::Cat.name}.png")
        puts "Created #{Kitten.last.name}; TotalKittens: #{Kitten.count}"
      end
    end
  end
end

  seed = Seed.new
  seed.start
