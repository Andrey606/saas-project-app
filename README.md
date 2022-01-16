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