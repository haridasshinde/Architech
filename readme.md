## Command line instructions
You can also upload existing files from your computer using the instructions below.

- Git global setup<br/>
`git config --global user.name "Haridas Shinde"` <br/>
`git config --global user.email "harishinde2@gmail.com"` <br/>

- Create a new repository <br/>
`git clone git@gitlab.com:haridas.shinde/architech.git`<br/>
`cd architech`<br/>
`touch README.md`<br/>
`git add README.md`<br/>
`git commit -m "add README"`<br/>
`git push -u origin master`<br/>

- Push an existing folder<br/>
`cd existing_folder`<br/>
`git init`<br/>
`git remote add origin git@gitlab.com:haridas.shinde/architech.git`<br/>
`git add .`<br/>
`git commit -m "Initial commit"`<br/>
`git push -u origin master`<br/>

- Push an existing Git repository<br/>
`cd existing_repo`<br/>
`git remote rename origin old-origin`<br/>
`git remote add origin git@gitlab.com:haridas.shinde/architech.git`<br/>
`git push -u origin --all`<br/>
`git push -u origin --tags`<br/>

- Composer Update
`php artisan crudbooster:update`