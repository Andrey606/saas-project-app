# to start new project with postgreas as db
rails new saas-project-app -d postgresql
cd saas-project-app
bundle install
rails db:create db:migrate