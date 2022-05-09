## open secret file to api_key and api_secret 

- EDITOR="code --wait" rails credentials:edit --environment=development   
## Access api credentials in rails console
- Rails.application.credentials.twitter  

## Table Plus Tool
- figure out what is in your database 
- connect table plus with your database sqlite3.db 

## twitter accounts  
- create table twitter_accounts
- belongs_to user 
- twitter_accounts resources 
- twitter accounts path in navbar
- twitter accounts index
- specify post method in link_to auth/twitter 
- redirect to twitter_accounts index when link to auth/twitter is clicked
- ensure that you are logged in 

## Tweets Index and New actions
- tweet model 
- tweets controller 
- tweets index and navbar 
- tweets schedule button 
- tweet new action