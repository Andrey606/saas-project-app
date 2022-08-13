# to start new project with postgreas as db
rails new saas-project-app -d postgresql
cd saas-project-app
bundle install
rails db:create db:migrate

# !!delete turbolinks!!:
1) gem
2) require in aplication.js

# gems:
- devise
- milia
- dotenv-rails
- byebug
- stripe
- pg
- sqlite
- carrierwave # image uploader gem
- mini_magick # image resizing gem
- fog, fog-aws # to working with images in production

# subdomain for localhost
http://gorails.lvh.me:3000/