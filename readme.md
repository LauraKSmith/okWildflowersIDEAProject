#Download the Heroku CLI 
##Once you login to CLI - use the following commands to deploy the webapp in heroku

    heroku create <app-name>
    heroku war:deploy <war-path> --app <app-name>
    
    Example:
    heroku create sample-heroku-deployment
    heroku war:deploy ./target/heroku-deployment.war --app sample-heroku-deployment
    
##### Note: Heroku will automatically picks the build pack of the application. If you want add any custom changes go to heroku UI and in the setting tab you can perform the changes.    

To check the logs:     
    
    heroku logs --app=sample-heroku-deployment --tail
    
## To deploy through github
    
    Follow the doc to add ProcFile and plugin info 
    https://devcenter.heroku.com/articles/java-webapp-runner   
    
    
