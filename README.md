# _Find Universities_

#### _This is a Ruby on Rails Application built to interact with the [Rails University API](https://github.com/gravytates/university_api) we also created.  
July 15, 2017_

#### By _**Asia Kane and Grady Shelton**_

## Description

This is an app where users can view and search for universities by a number of parameters. Sign in through Devise to write reviews for any university as well. Will_Paginate allows for easy viewing on the university page and selected API calls help to narrow down your search.

Users can access:
- All universities and their reviews via GET requests to the University API

Authenticated users can access:
- Generate POST requests to add reviews to universities

Queries:
- Filters universities by name
- Filters universities by description
- Filters universities by population
- Filters universities by mascot

The application structure is outlined below.  

Models:
  - Universities
  - Reviews
  - Users (Devise Authentication)

## Prerequisites

You will need the following things properly installed on your computer.

* [Git](https://git-scm.com/)
* [Postgres](https://www.postgresql.org/)
* [Ruby](https://www.ruby-lang.org/en/downloads/)
* [Rails](http://rubyonrails.org/)

## Installation

###First clone and run the University API
In your terminal:
* `git clone https://github.com/akane0915/university_api`
* `cd university_api`
* `bundle install`
* Open another terminal window and type `postgres`.  Leave this window open.
* In your first terminal window type:
* `bundle exec rake db:setup`
* `bundle exec rake db:test:prepare`

You can test the API in Postman.

* URL: localhost:3000/
* Header Key: Authorization
* Header Value: 'your-own-token-goes-here'

### Now clone and run the Find Universities Application
In your terminal:
* `git clone https://github.com/gravytates/find_universities`
* `cd find_universities`
* `bundle install`
* `bundle exec rake db:setup`
* `bundle exec rake db:test:prepare`

## Development server

In the University API Directory:
Run `bundle exec rails s` for a dev server. The app will automatically reload if you change any of the source files.

In the Find Universities Directory:
Run `bundle exec rails -p 3001` and navigate to `http://localhost:3001/`.

* If you would like to make changes to this project, do so in a text editor.
* Make frequent commits with detailed comments.
* Submit changes as pull request to Grady at gravytates on Github.

## Running tests

This app uses RSpec and Shouldamatchers for testing.
Run `bundle exec rspec` in terminal to test.

## Technologies Used

* Ruby
* Rails
* JWT Gem
* Devise
* ActiveRecord
* Postgres
* Bundler
* Rake Gem
* HTML
* CSS
* Bootstrap
* ES6

## Known Bugs
_N/A_

## Support and contact details
_I encourage you to update/make suggestions/refactor this code as you see fit. I am always open to improvement! Please contact Asia Kane at asialkane@gmail.com with questions._

### License
*This software is licensed under the MIT license*
Copyright © 2017 **Asia Kane and Grady Shelton**







University Calls

JSON.parse(RestClient.get 'http://localhost:3000/universities')

JSON.parse(RestClient.patch 'http://localhost:3000/universities/1', {name: 'updated', description: 'desc', population: 2000, mascot: 'manbearpig'}, headers={authorization: ENV['UNIVERSITY_API_KEY']})

JSON.parse(RestClient.post 'http://localhost:3000/universities', {name: 'uni', description: 'desc', population: 2000, mascot: 'manbearpig'}, headers={authorization: ENV['UNIVERSITY_API_KEY']})

JSON.parse(RestClient.delete 'http://localhost:3000/universities/1', headers={authorization: ENV['UNIVERSITY_API_KEY']})


Review Calls

JSON.parse(RestClient.get 'http://localhost:3000/universities/1/reviews/1')

JSON.parse(RestClient.patch 'http://localhost:3000/universities/1/reviews/1', {author: 'updated-author'}, headers={authorization: ENV['UNIVERSITY_API_KEY']})

JSON.parse(RestClient.post 'http://localhost:3000/universities/1/reviews', {author: 'Mr. NiceGuy, No-Mo', content: 'not the best school.', rating: 2 }, headers={authorization: ENV['UNIVERSITY_API_KEY']})

JSON.parse(RestClient.delete 'http://localhost:3000/universities/1/reviews/1', headers={authorization: ENV['UNIVERSITY_API_KEY']})
