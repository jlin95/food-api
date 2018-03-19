# README for setting up this project

## Installation instructions
1. Install Ruby and Rails and clone this repository.
2. Run `bundle install`
3. Run `rails db:create` to set up the DB.
4. Run `rails db:migrate` to migrate the database.
5. Run `rails db:seed` to begin seeding the data.
6. Run `rails s` to run the server.
7. Open in [localhost:3000/graphiql](localhost:3000/graphiql) to query the endpoint. 


## Code structure
- graphiql/types contains the GraphQL types of the objectss for our food delivery API.
- /models contains the models and describe their associations. 

## Dependencies
- Rails 5
- GraphQL
- RSpec for testing (to be added)
