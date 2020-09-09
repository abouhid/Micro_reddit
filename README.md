# Micro-reddit Project
  The aim of this project is practicing what we have learned about Active Record, Migrations, Associations and Validations. We have created the back-end of a blog in which you can:
* Create an author's username, email and password;
* Create author's posts which have a body and a title;
* Add comments to the posts created, witch body and title.

This README would normally document whatever steps are necessary to get the
application up and running.

## Built With

- Ruby on Rails version 6.0

### Prerequisites

- Browser (Google Chrome, Mozilla Firefox, Safari or any other browser)
- Ruby and Ruby on Rails installed in your machine
- SQLite installed in your machine

### Getting Started
```
Open Terminal
run git clone git@github.com:abouhid/Micro_reddit.git
run cd Micro-reddit
run rake db:migrate
run rails c
```
- In the console you are able to create the authors,posts and comments, alongisde with its features, as follows on the example:

```
author1 = Author.create(username:'test_name', email: 'testing@gmail.com', password: 'example')
post1 = author1.posts.new
post1.title = 'Example title'
post1.body = '50 characters are necessary for this body to be accepted by the validations applied to this post model'
post1.save
comment1 = post1.comments.new
comment1.comment_title = 'test comment title'
comment1.comment_body = 'test comment body'
comment1.save
```
- You can check the records created by typing

```
Author.all
Post.all
Comment.all
```

## Authors

👤 **Alexandre Bouhid**

- Github: [@abouhid](https://github.com/abouhid)
- LinkedIn: [Alexandre Bouhid](https://www.linkedin.com/in/alexandrebouhid/)

👤 **Kelyn Paul Njeri**

- Github: [@KelynPNjeri](https://github.com/KelynPNjeri)
- Twitter: [@KelynNjeri](https://twitter.com/kelyn-njeri)
- Linkedin: [Kelyn Paul](https://linkedin.com/kelyn-paul)


## 🤝 Contributing

Contributions, issues and feature requests are welcome!

Feel free to check the [issues page]().

## Show your support

Give a ⭐️ if you like this project!

## Acknowledgments

- Microverse
- GitHub
- TheOdinProject
- Ruby

## 📝 License

This project is [MIT](lic.url) licensed.
