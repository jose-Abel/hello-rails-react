# Hello Rails-React - Jose Abel Ramirez Frontany

Project to set up a "Hello world" with rails-react gem. It consist of 2 routes, the root that's connected to the HomeController index action, and the RandomGreetingsController index action. The home/index View is rendering the App React Component, which is the Router for the React side of the Full Stack App with the only route of the home page to render the Greeting component, but with a structure to scale to add more routes. 

The React state is managed with Redux, so every time the page refresh, the Greeting component dispatch an action through the redux configuration, to the /random_greetings route that is in charge of getting a sample from all the Greetings in the Postgres Database. 

## Built With

- rails-react
- react-dom
- redux
- react-router
- fetch
- HTML
- CSS
- rspec
- ffaker
- factory_bot_rails

## Documentation

- https://github.com/reactjs/react-rails


## Getting Started

To get a local copy up and running follow these simple example steps.

### Setup

Go to the top of the page, press te green button that says "Code", and copy the link. Then you have to go to your console and type

```
    git clone 'repository-link'
```

That's all, you are ready to go!


### Install

Run the following command to have all yarn packages dependencies installed:

```
    bundle install
```

```
    npm install
```

```
    rails db:create
```


```
    rails db:migrate
```


```
    rails db:seed
```

### Usage

To run the "react-scripts start" script, type the following command:

```
    rails s
```

### Tests with React Testing Library

To run the rspec test files for Rails controller type the following

```
    rspec
```

### Linters

To run the Rails Rubocop rules, type the following

```
    rubocop
```

To run the CSS linters type the following

```
    npx stylelint "**/*.{css,scss}"
```

## Author: Jose Abel Ramirez Frontany\*\*

- GitHub: [Jose Abel Ramirez Frontany](https://github.com/jose-Abel)
- Linkedin: [Jose Abel Ramirez Frontany](www.linkedin.com/in/joseabelramirezfrontany)

## 🤝 Contributing

Contributions, issues, and feature requests are welcome!

## 📝 License

This project is MIT licensed.

## Show your support

Give a ⭐️ if you like this project!
