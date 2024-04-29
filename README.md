# DeltaExchange Sheet
> `DESheet is employee management platform which provides comapnies to manage & keep track of the record of assigned projects`
> 
# Installation
Follow these easy steps to install and start the app:

### Set up Rails app
```ruby 
bundle install
rails db:create
rails db:migrate
rails db:seed
```
### Start the server
> rails s 


# _`Features`_ 
#  SignUp & SignIn with Devise authentication with
> when someone visit the site they can navigate to `signUp ` page and sign Up by providing neccessary details,and after registration they can log into their accounts.
> Also there are features like
> 1. forgot password ( you have to click the mailer link from the rails console because the default is not set )
> 2. Updating the profile with some better options
![Screenshot from 2024-04-30 03-51-09](https://github.com/revolution-99/DESheets/assets/60106442/b6157e20-6345-459e-9c16-fd467092ba45)
![Screenshot from 2024-04-30 03-52-21](https://github.com/revolution-99/DESheets/assets/60106442/eed9ab14-ced5-43ab-8b2e-6e51a4edaa79)


# Department Section
> User can do CRUD over department
![Screenshot from 2024-04-30 03-53-20](https://github.com/revolution-99/DESheets/assets/60106442/f4ef633b-2d52-4dc1-acb7-28a3ea139cb1)
![Screenshot from 2024-04-30 03-53-47](https://github.com/revolution-99/DESheets/assets/60106442/130c7a32-2249-423e-84fc-1c4406c6b889)

# Employee Section
> User can do CRUD over employee
> Can assign projects from here using multi select deopdown
![Screenshot from 2024-04-30 03-55-32](https://github.com/revolution-99/DESheets/assets/60106442/006c673c-5380-4aea-b184-e0a8c453c3ee)
![Screenshot from 2024-04-30 03-59-34](https://github.com/revolution-99/DESheets/assets/60106442/2a2fd2bd-ea2a-4a01-b4a8-982aa67cfa15)

# Project Section
> User can do CRUD over project
> Also Can assign employees from here using multi select deopdown
> In the index page one can see the total hours contributed per project with individula contribution in terms of hours
![Screenshot from 2024-04-30 04-08-10](https://github.com/revolution-99/DESheets/assets/60106442/58ceb571-679d-4219-b2d3-0309d5649734)
![Screenshot from 2024-04-30 04-06-01](https://github.com/revolution-99/DESheets/assets/60106442/9bde2d56-3e9b-4fc7-8309-307c8fd7f91c)

# Assignment Section
> User can do CRUD over assignments
> From here user can asisgn hours for the combination of employee & project which will be reflected in projects index page
![Screenshot from 2024-04-30 04-09-49](https://github.com/revolution-99/DESheets/assets/60106442/083f7ec2-c0cb-4fa7-a7d9-d85ceb5997c3)
![Screenshot from 2024-04-30 04-10-28](https://github.com/revolution-99/DESheets/assets/60106442/70d416b8-4bce-4143-81cb-083772fb9a7d)

### Test Cases added for the models
1. Model test coverage is 100%

### Things missed out beacuse of time constraint
1. Implementation of AJAX
2. Implementation of API end point

