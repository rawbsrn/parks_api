# _Random Parks API_

#### By _**Rob Sameh**_

## Technologies Used

* Ruby on Rails
* Faker
* HTML
* Postgresql
* rspec-rails
* rswag
* swagger-codegen

## Description

A API with CRUD (Create, Read, Update, and Delete) functionality in a SQL database. It contains data for randomly created parks. You can also use the [**parks_random_post**](https://rawbsrn.github.io/parks_api/#/default/post_parks_random) Endpoint to generate a new random park at any time. It features [**Swagger UI**](https://swagger.io/tools/swagger-ui/), which: "allows anyone — be it your development team or your end consumers — to visualize and interact with the API’s resources without having any of the implementation logic in place. It’s automatically generated from your OpenAPI (formerly known as Swagger) Specification, with the visual documentation making it easy for back end implementation and client side consumption." Note that [**Github Pages**](https://rawbsrn.github.io/parks_api/#/default/post_parks) documentation is only for reference, while the local [**api-docs**](http://localhost:3000/api-docs/index.html) is fully fuctional.
 



## Setup/Installation Requirements

**_Run the following commands in your command line:_**

*  Git clone repository to local machine:

```
git clone https://github.com/rawbsrn/parks_api
```
* cd into the project directory:

```
cd parks_api
```
* Install dependencies:

```
bundle install
```
* Prepare database, Check the terminal output for the Admin creds!:

```
rake db:create db:migrate db:test:prepare db:seed
```
* Start the application:

```
rails s
```
* Navigate to the URL below in the web browser of your choice:

```
http://localhost:3000/api-docs/index.html
```

* You may need to install Ruby on your machine in order to get working, you can follow the instructions here for more information: `https://www.learnhowtoprogram.com/ruby-and-rails-part-time/getting-started-with-ruby/ruby-installation-and-setup`

* You may need to install Postgresql on your machine in order to get working, you can follow the instructions here for more information: `https://www.learnhowtoprogram.com/ruby-and-rails-part-time/getting-started-with-ruby/installing-postgres`


## Documentation for API Endpoints

Documentation can be found locally at [**api-docs**](http://localhost:3000/api-docs/index.html) or online at [**Github Pages**](https://rawbsrn.github.io/parks_api/#/default/post_parks)

## License

 This program is free software: you can redistribute it and/or modify
    it under the terms of the GNU General Public License as published by
    the Free Software Foundation, either version 3 of the License, or
    (at your option) any later version.

    This program is distributed in the hope that it will be useful,
    but WITHOUT ANY WARRANTY; without even the implied warranty of
    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
    GNU General Public License for more details.

    You should have received a copy of the GNU General Public License
    along with this program.  If not, see <https://www.gnu.org/licenses/>.

## Known Bugs

* Please report any issues to: 

* Rob . Sameh @ gmail {dot} com

Copyright (c) _2022_ _Sameh_