# URL Shortening application created by Oleksandr Shestopal

# Task Description
1. Provide a simple web front which will take URL input and give back a shortened URL
2. When user access the short URL it should be redirected to full URL
3. Provide an API endpoint where you can query stats around a particular shortened URL. The stats must include as much information as you can get out of the user who visited the shortened URL. ​There is no right answer to this.​ ​Please use your best judgement of what are important attributes to capture for this type of web application.
4. Make small commits and make the commit messages descriptive so we can see your thought process.
5. Provide unit tests and integration tests
6. User authentication is optional.

Things you may want to cover:

* Ruby version
    - 2.4.4
* System dependencies
    - Rails 5.2
    - Postgresql
* Configuration
    - `bundle install`
* Database creation
    - `rails db:setup rails db:migrate`
* How to run the test suite
    - `bundle exec rspec`

* Deployed on heroku
    - `https://shorturl-test-app.herokuapp.com/`

# Thoght process
- I have created ShortUrl model, which contains long url and has a unique token.
This token is used to generate a link `follow?token=some_token`,
which redirects user to a long target url.
This allows us to store hort path, and find it by a token in a database.

- I also added UserInfo model. It stores information, about user pulled from request 
every time user click 'follow' link.
It has remote ip, User Agent, referer(last url before making request). 
I think this part can be improved, but requires some research.

- Each ShortUrl has_many UserInfos, for each request to this url.

- Then I added API endpoint, which returns list of ShortUrls with associated UserInfos. 
I used ActiveModel serializer for it.
As an improvement I would add user authentication, via basic http or JWT.

- I was concentrated fully on backend so front-ent part badly needs some styling.
