# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

Question.destroy_all
Question.create!([
  { title: 'Аутентификация в Rails', body: 'Как реализовать аутентификацию пользователей в Rails приложении?' },
  { title: 'Slim или ERB?', body: 'Чем отличается использование Slim от ERB в Rails приложении?' },
  { title: 'Ruby on Rails vs Django', body: 'В чем различия между Ruby on Rails и Django и почему выбрать именно Ruby on Rails?' }
])

