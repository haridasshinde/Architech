## Command line instructions
You can also upload existing files from your computer using the instructions below.

- Git global setup
`git config --global user.name "Haridas Shinde"`
`git config --global user.email "harishinde2@gmail.com"`

-Create a new repository
`git clone git@gitlab.com:haridas.shinde/architech.git`
`cd architech`
`touch README.md`
`git add README.md`
`git commit -m "add README"`
`git push -u origin master`

-Push an existing folder
`cd existing_folder`
`git init`
`git remote add origin git@gitlab.com:haridas.shinde/architech.git`
`git add .`
`git commit -m "Initial commit"`
`git push -u origin master`

-Push an existing Git repository
`cd existing_repo`
`git remote rename origin old-origin`
`git remote add origin git@gitlab.com:haridas.shinde/architech.git`
`git push -u origin --all`
`git push -u origin --tags`