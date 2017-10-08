5C-Craigslist
=================
Summary
-------
Among the five colleges that compose the Claremont Colleges, many students utilize various facebook groups and other communication platforms (such as campus-wide emails) to sell dorm room items, ranging from furniture to class books. Much waste is generated as these various platforms are not accessible to every student, and the difficulty of scheduling actual transitions prevent students from selling their items and rather ends up in the garbage disposal. This web app allows Claremont College students to better connect with each other.

APIs/Gems:
-------
1. Image uploading using <a href="https://github.com/thoughtbot/paperclip">paperclip</a> gem
2. <a href="https://github.com/thoughtbot/paperclip#image-processor">ImageMagick</a>, which is required for Paperclip.
3. <a href="https://developers.google.com/maps/web/">Google Maps API</a> with the <a href="https://github.com/alexreisner/geocoder"> geocoder</a> gem
4. <a href= "https://www.ckeditor.com">CKEditor</a> text editor which allows users to style their post listings.
5. <a href="https://github.com/laserlemon/figaro">Figaro</a> for hiding API keys
6. Bootstrap grids for making the website responsive

System Requirements:
-------
1. Rails 5 (5.0.1)
2. Ruby 2.4 (2.4.2p198)

Useful Functions
-------
1. Admins receive a Slack notification with all info items for each post made.
2. Students of Claremont Colleges are the only users. 

User Stories
-------
1. Users can login, logout and create an account.
2. Users can view all posts without logging in.
3. Users can view all posts within a category without loggin in.
4. Users can post a listing if logged in.
5. Users can upload an image and address to their post if logged in.
6. Users can edit/update their post if logged in.
8. Users can view all posts made by self. 

![show](https://cloud.githubusercontent.com/assets/22533214/25117292/75a8724c-23df-11e7-9f4b-0ed4c9898a0a.png)
![profile](https://cloud.githubusercontent.com/assets/22533214/25117295/75a99adc-23df-11e7-8119-3030ea75dabf.png)
![post](https://cloud.githubusercontent.com/assets/22533214/25117291/759dc90a-23df-11e7-9d1e-0a696a62c700.png)
![allposts](https://cloud.githubusercontent.com/assets/22533214/25117293/75a8b9a0-23df-11e7-846e-84ab82b9e3cd.png)

Installation Instructions
-------
To view locally, clone the repo, install and create the database.
```
git clone https://github.com/justinhyou/5C-Craigslist
cd 5C-Craigslist
bundle install
```

If you don't have imagemagick on your computer, install it
```
mac - brew install imagemagick
```

Then,start the server
```
be rails s
```

Contact
-------
(Justin) Hyobin You at hyobinyou@gmail.com

References 
-------
https://developers.braintreepayments.com/guides/venmo/server-side/ruby

https://github.com/RailsApps/rails-stripe-checkout

http://www.hongkiat.com/blog/send-messages-to-slack/

http://teejayvanslyke.com/use-slack-incoming-webhooks-from-rails.html

https://github.com/jawt94/Craigslist
