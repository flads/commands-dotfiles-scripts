#### - Create a new feature:
<p> git checkout develop </p>
<p> git checkout -b feature/adding-comment-in-gitignore </p>

<p> - Git Flow command: </p>
<p> ... git flow init ... </p>
<p> git flow feature start feature_branch </p>

#### - Publish a new feature:
<p> git push origin feature/adding-comment-in-gitignore </p>

#### - Merge the new feature in the develop branch:
<p> git checkout develop </p>
<p> git merge feature/adding-comment-in-gitignore </p>

<p> - Git Flow command: </p>
<p> git flow feature finish feature_branch </p>

#### - Publish the develop branch:
<p> git push origin develop </p>

#### - Creating and publishing a tag and release:
<p> git checkout -b release/v1.0 </p>
<p> git push origin release/v1.0 </p>
<p> git tag -a v1.0 -m "Git Flow is awesome!" </p>
<p> git show v1.0 </p>
<p> git push origin v1.0 </p>

<p> - Git Flow command: </p>
<p> git flow release start v1.0 </p>

#### - Merge the release with the master and publish the master:
<p> git checkout master </p>
<p> git merge release/v1.0 </p>
<p> git push origin master </p>

<p> - Git Flow command: </p>
<p> git flow release finish 'v1.0' </p>

#### - Working with hotfix:
<p> git flow hotfix start hotfix_branch </p>
<p> git flow hotfix finish hotfix_branch </p>

#### - Undo the last commit and send the changes back to the staging area:
<p> it reset HEAD~1 --soft </p>

#### - Stash the changes in a dirty working directory away:
<p> git stash </p>

