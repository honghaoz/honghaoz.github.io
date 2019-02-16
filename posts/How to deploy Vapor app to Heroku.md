# How to deploy Vapor app to Heroku

1. Install the Heroku CLI tool

    `brew install heroku/brew/heroku`

2. Logging in
    ```
    heroku login
    heroku auth:whoami // for verification
    ```
3. Create an application
    
    Do this on the [Heroku dashboard](https://dashboard.heroku.com/apps).
  
4. Connect with Heroku

    `heroku git:remote -a your-apps-name-here`
5. Setup for App
    1. Set Buildpack
    
        `heroku buildpacks:set https://github.com/vapor-community/heroku-buildpack`
        
        The Buildpack is for providing the recipe for building your app when you deploy it.
    2. Create `.swift-version` file

        `echo "4.1" > .swift-version`
        
        This is used by the Buildpack to determine which version of Swift to install for the project.
    3. Create `Procfile` file
    
        `echo "web: Run serve --env production --hostname 0.0.0.0 --port \$PORT" > Procfile`

6. Configure the database
   
   (Add later)

7. Deploy to Heroku
    
    `git push heroku master`
    
    If not started, run `heroku ps:scale web=1`
    
    `heroku open` to open the app
