# README

This README would normally document whatever steps are necessary to get the
application up and running.

* Ruby version 2.2.6

* Rails version 5.0.6

* Database creation using  "rake db:create"

* Run migrations using "rake db:migrate"

* Then start rails server using "rails s"

* Endpoint for import csv you need "file" param to upload a csv file
* Post request: "/import"

* Endpoint for create post
* Post request: "/create_post?brand_name=test2&product_name=test2&email=test2@mailinator.com&photo_url=https://dummyimage.com/600x400/000/fff&username=test2&product_desc=test test test2"


* Endpoint for update a post

* Patch request: "/update_post/1001?brand_name=test&product_name=test&email=test@mailinator.com&photo_url=https://dummyimage.com/600x400/000/fff&username=test1&product_desc=test test test" 


* Endpoint for delete a post

* Delete request: "/delete_post/:post_id"


* Endpoint for fetch a post

* Get request: "/post_detail/:post_id"